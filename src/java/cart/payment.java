/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package cart;

import constant.CommonConstant;
import dal.Car_Detail_DAO;
import dal.OrderDAO;
import dal.OrderDetailDAO;
import enity.Car_Detail;
import enity.ID_Product;
import enity.Order;
import enity.OrderDetail;
import enity.PageController;
import enity.User;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;



import java.sql.Timestamp;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

/**
 *
 * @author Admin
 */
public class payment extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet payment</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet payment at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("Views/cart/cart.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action") == null ? "" : request.getParameter("action");
        switch (action) {
            case "addtocart":
                addToCart(request, response);
                break;
            case "changequantity":
                changeQuantity(request, response);
                break;

            case "delete":
                delete(request, response);
                break;
            case "checkout":
                checkout(request, response);
                break;
            default:
                throw new AssertionError();
        }
        response.sendRedirect("payment");
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private void addToCart(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();

        int id = Integer.parseInt(request.getParameter("idd"));
        String quantityy = request.getParameter("quantity") == null ? "1" : request.getParameter("quantity");
        int quantity = Integer.parseInt(quantityy) ;

        Order cart = (Order) session.getAttribute("cart");
        if (cart == null) {
            cart = new Order();
        }
        OrderDetail or = new OrderDetail();
        or.setProductID(id);
        or.setQuantity(quantity);

        addOrderDetailToOrder(or, cart);
        Car_Detail_DAO dao = new Car_Detail_DAO();
        List<Car_Detail> listCar_Detail = dao.findAll();
        session.setAttribute("listcarr", listCar_Detail);
        session.setAttribute("cart", cart);

    }

    private void addOrderDetailToOrder(OrderDetail or, Order cart) {
        boolean isAdd = false;
        for (OrderDetail obj : cart.getListOrderDetail()) {
            if (obj.getProductID() == or.getProductID()) {
                obj.setQuantity((obj.getQuantity() + or.getQuantity()));
                isAdd = true;
            }
        }
        if (isAdd == false) {
            cart.getListOrderDetail().add(or);
        }
    }

    private void changeQuantity(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();
        try {
            //get ve product id
            int id = Integer.parseInt(request.getParameter("id"));
            //get ve quantity
            int quantity = Integer.parseInt(request.getParameter("quantity"));
            //lay ve cart
            Order cart = (Order) session.getAttribute("cart");
            //thay doi quantity
            for (OrderDetail obj : cart.getListOrderDetail()) {
                if (obj.getProductID() == id) {
                    obj.setQuantity(quantity);
                }
            }

        } catch (Exception e) {
            e.printStackTrace();

        }
    }

    private void delete(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        HttpSession session = request.getSession();
        Order cart = (Order) session.getAttribute("cart");
        OrderDetail od = null;
        for (OrderDetail obj : cart.getListOrderDetail()) {
            if (obj.getProductID() == id) {
                od = obj;
            }
        }
        cart.getListOrderDetail().remove(od);
        session.setAttribute("cart", cart);
    }

    private void checkout(HttpServletRequest request, HttpServletResponse response) {
        //lay ve cart
        HttpSession session = request.getSession();
        Order cart = (Order) session.getAttribute("cart");
        //lay ve account id
        int accountId = ((User) session.getAttribute(CommonConstant.SESSION_ACCOUNT)).getId();
        List<Car_Detail> list = (List<Car_Detail>) session.getAttribute(CommonConstant.SESSION_CAR1);
        //amount
        int amount = calculateAmount(cart, list);
        //insert order 
        //set information
        cart.setAccountID(accountId);
        cart.setAmount(amount);
        
        //get list product

        OrderDAO orderDAO = new OrderDAO();
        OrderDetailDAO odDAO = new OrderDetailDAO();
        int orderId = orderDAO.insert(cart);
        for (OrderDetail obj : cart.getListOrderDetail()) {
            obj.setOrderID(orderId);
            odDAO.insert(obj);
        }
        //tru di so luong san pham o trong co so du lieu

        //remove
        session.removeAttribute("cart");
    }

    private int calculateAmount(Order cart, List<Car_Detail> list) {
        int amount = 0;
        for (OrderDetail od : cart.getListOrderDetail()) {
            amount += (od.getQuantity() * findPriceById(list, od.getProductID()));
        }
        return amount;
    }

    private float findPriceById(List<Car_Detail> list, int bookId) {
        for (Car_Detail obj : list) {
            if (obj.getId() == bookId) {
                return obj.getPrice();
            }
        }
        return 0;
    }
}
