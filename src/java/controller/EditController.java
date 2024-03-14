/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.Car_Detail_DAO;
import enity.Car_Detail;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.File;

@MultipartConfig
/**
 *
 * @author Admin
 */
public class EditController extends HttpServlet {

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
            out.println("<title>Servlet EditController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EditController at " + request.getContextPath() + "</h1>");
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
        processRequest(request, response);
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
        try {
            int id = Integer.parseInt(request.getParameter("id").trim());
            String name = request.getParameter("name").trim();
            float price = Float.parseFloat(request.getParameter("price"));
            int category = Integer.parseInt(request.getParameter("category"));
            String description = request.getParameter("description").trim();

            Part part = request.getPart("image");
            String imagePath = null;
            if (part.getSubmittedFileName() == null
                    || part.getSubmittedFileName().trim().isEmpty()
                    || part == null) {
                imagePath = request.getParameter("currentImage");
            } else {
                // duong dan luu anh
                String path = request.getServletContext().getRealPath("/images");
                File dir = new File(path);
                // xem duongd an nay ton tai chua
                if (!dir.exists()) {
                    dir.mkdirs();
                }

                File image = new File(dir, part.getSubmittedFileName());
                // ghi file vao trong duong dan
                part.write(image.getAbsolutePath());
                // lay ra cai context path cua project
                imagePath = request.getContextPath() + "/images/" + image.getName();
            }

            Car_Detail car = new Car_Detail(id, name, price, imagePath, description, category);
            Car_Detail_DAO dao = new Car_Detail_DAO();
            dao.updateByID(car);

        } catch (Exception e) {
            e.printStackTrace();
        }
        response.sendRedirect("dashboard");
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

}
