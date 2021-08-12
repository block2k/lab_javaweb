/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Product;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "ProductController", urlPatterns = {"/product"})
public class ProductController extends HttpServlet {

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
            out.println("<title>Servlet ProductController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ProductController at " + request.getContextPath() + "</h1>");
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
        try {
            String action = request.getParameter("action");
            DAO dao = new DAO();
            switch (action) {
                case "search":
                    String pageSearch = request.getParameter("page") == null ? "1" : request.getParameter("page");
                    String txtSearch = request.getParameter("search");
                    int endPageSearch = (dao.countTotalProduct(txtSearch) / 3) + (dao.countTotalProduct(txtSearch) % 3 == 0 ? 0 : 1);
                    List<Product> listSearch = dao.searchProduct(Integer.parseInt(pageSearch), txtSearch);

                    request.setAttribute("txt", txtSearch);
                    request.setAttribute("page", pageSearch);
                    request.setAttribute("endPageSearch", endPageSearch);
                    request.setAttribute("listP", listSearch);
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                    break;
                default:
                    String page = request.getParameter("page") == null ? "1" : request.getParameter("page");
                    int endPage = (dao.countTotalProduct() / 3) + (dao.countTotalProduct() % 3 == 0 ? 0 : 1);
                    List<Product> list = dao.getAllProduct(Integer.parseInt(page));

                    request.setAttribute("page", page);
                    request.setAttribute("endPage", endPage);
                    request.setAttribute("listP", list);
                    request.getRequestDispatcher("index.jsp").forward(request, response);
            }

        } catch (Exception ex) {
            Logger.getLogger(ProductController.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        request.setCharacterEncoding("UTF-8");
        try {
            DAO dao = new DAO();

            String action = request.getParameter("action");
            switch (action) {
                case "add":
                    String name = request.getParameter("productname");
                    String image = request.getParameter("productimage");
                    double price = Double.parseDouble(request.getParameter("productprice"));

                    dao.addProduct(name, image, price);
                    response.sendRedirect("product?action=null");
                    break;
                case "delete":
                    String id = request.getParameter("productId");
                    dao.deleteProduct(id);
                    response.sendRedirect("product?action=null");
                    break;
                case "edit":
                    String pid = request.getParameter("productid");
                    String pname = request.getParameter("productname");
                    String pimage = request.getParameter("productimage");
                    String pprice = request.getParameter("productprice");
                    dao.editProduct(pid, pname, pimage, pprice);
                    response.sendRedirect("product?action=null");
                    break;
                case "search":
                    String page = request.getParameter("page") == null ? "1" : request.getParameter("page");
                    String txtSearch = request.getParameter("search");
                    int endPage = (dao.countTotalProduct(txtSearch) / 3) + (dao.countTotalProduct(txtSearch) % 3 == 0 ? 0 : 1);
                    List<Product> list = dao.searchProduct(Integer.parseInt(page), txtSearch);

                    if (list.size() == 0) {
                        request.setAttribute("notfound", "Not found");
                        request.getRequestDispatcher("index.jsp").forward(request, response);
                        return;
                    }
                    request.setAttribute("txt", txtSearch);
                    request.setAttribute("page", page);
                    request.setAttribute("endPageSearch", endPage);
                    request.setAttribute("listP", list);
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                    break;
                default:
                    response.sendRedirect("product?action=null");
            }

        } catch (Exception ex) {
            Logger.getLogger(ProductController.class.getName()).log(Level.SEVERE, null, ex);
        }
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
