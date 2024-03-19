/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import constant.CommonConstant;
import dal.Car_Detail_DAO;
import dal.ID_Product_DAO;
import enity.Car_Detail;
import enity.ID_Product;
import enity.PageController;
import enity.User;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;

/**
 *
 * @author Admin
 */
public class HomeController extends HttpServlet {

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
            out.println("<title>Servlet HomeController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet HomeController at " + request.getContextPath() + "</h1>");
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
    Car_Detail_DAO car_Detail_DAO = new Car_Detail_DAO();
    ID_Product_DAO iD_Product_DAO = new ID_Product_DAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        PageController pageController = new PageController();
        List<Car_Detail> listCar_Detail = searchByProduct(request,pageController);
       
        List<ID_Product> listProduct = iD_Product_DAO.findAll();

        if (listCar_Detail == null) {
            listCar_Detail = car_Detail_DAO.findAll();
        }
        session.setAttribute("userCheck1", session.getAttribute("userCheck"));
        session.setAttribute(CommonConstant.SESSION_CAR1, listCar_Detail);
        session.setAttribute("listProduct", listProduct);
        request.setAttribute("pageControl", pageController);
        request.getRequestDispatcher("Views/Home.jsp").forward(request, response);
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
        response.sendRedirect("home");
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

    private List<Car_Detail> searchByProduct(HttpServletRequest request,PageController pageController) {
        String pageRaw = request.getParameter("page");
        int page;
        try {
            page = Integer.parseInt(pageRaw);
            if (page <= 0) {
                page = 1;
            }
        } catch (NumberFormatException e) {
            page = 1;
        }
        String actionSearch = request.getParameter("search") == null ? "default" : request.getParameter("search");
        List<Car_Detail> listCar_Detail;
        String urlPattern = request.getRequestURI().toString();
         int totalRecored = 0;
        switch (actionSearch) {
            case "category":
                String id = request.getParameter("categoryid");
                listCar_Detail = car_Detail_DAO.findByID(id,page);
                totalRecored = car_Detail_DAO.findTotalRecoredByCategoryId(id);
                pageController.setUrlPattern(urlPattern + "?search=category&categoryid=" + id + "&");
                break;
            case "searchbyname":
                String keyword = request.getParameter("keyword");
                 listCar_Detail = car_Detail_DAO.findByName(keyword,page);
                 totalRecored = car_Detail_DAO.findTotalRecoredByName(keyword);
                 pageController.setUrlPattern(urlPattern + "?search=searchbyname&keyword=" + keyword + "&");
                break;
    
            default:
              listCar_Detail = car_Detail_DAO.findAll12(page);
              totalRecored = 4;
              pageController.setUrlPattern(urlPattern + "?");
        }
        
        int totalPage = (totalRecored % CommonConstant.RECORED_PER_PAGE) == 0
                ? (totalRecored / CommonConstant.RECORED_PER_PAGE) 
                : (totalRecored / CommonConstant.RECORED_PER_PAGE) +1 ;
        pageController.setPage(page);
        pageController.setTotalPage(totalPage);
        pageController.setTotalRecord(totalRecored);
        return listCar_Detail;
    }

}
