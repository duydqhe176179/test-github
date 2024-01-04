/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Account;

/**
 *
 * @author Admin
 */
public class tinhDiem extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet tinhDiem</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet tinhDiem at " + "DANG NHAP DE TINH DIEM SCHOOL RANK" + "</h1>");
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

        // Set a session attribute (e.g., "currentDate") with the current date
        String user=request.getParameter("user");
        if (user != null) {
            request.getRequestDispatcher("schoolRank.jsp").forward(request, response);
        } else{
            processRequest(request, response);
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
        String to_hop = request.getParameter("to_hop");
        Double toan = Double.parseDouble(request.getParameter("toan"));
        Double van = Double.parseDouble(request.getParameter("van"));
        Double anh = Double.parseDouble(request.getParameter("anh"));
        Double ly = Double.parseDouble(request.getParameter("ly"));
        Double hoa = Double.parseDouble(request.getParameter("hoa"));
        Double sinh = Double.parseDouble(request.getParameter("sinh"));
        Double su = Double.parseDouble(request.getParameter("su"));
        Double dia = Double.parseDouble(request.getParameter("dia"));
        Double gdcd = Double.parseDouble(request.getParameter("gdcd"));
        String notion = "";
        if (to_hop.equals("1")) {
            Double tongdiem = (toan + van + anh + ly + hoa + sinh) / 6;
            if (tongdiem < 5) {
                notion = "Bạn không đủ điều kiện xét tuyển ";
            } else if (tongdiem < 6) {
                notion = "Chúc mừng bạn nằm trong top 50 School Rank";
            } else if (tongdiem < 7) {
                notion = "Chúc mừng bạn nằm trong top 40 School Rank";
            } else if (tongdiem < 8) {
                notion = "Chúc mừng bạn nằm trong top 30 School Rank";
            } else if (tongdiem < 9) {
                notion = "Chúc mừng bạn nằm trong top 20 School Rank";
            } else {
                notion = "Chúc mừng bạn nằm trong top 10 School Rank";
            }
        } else {
            Double tongdiem = (toan + van + anh + su + dia + gdcd) / 6;
            if (tongdiem < 5) {
                notion = "Bạn không đủ điều kiện xét tuyển";
            } else if (tongdiem < 6) {
                notion = "Chúc mừng bạn nằm trong top 50 School Rank";
            } else if (tongdiem < 7) {
                notion = "Chúc mừng bạn nằm trong top 40 School Rank";
            } else if (tongdiem < 8) {
                notion = "Chúc mừng bạn nằm trong top 30 School Rank";
            } else if (tongdiem < 9) {
                notion = "Chúc mừng bạn nằm trong top 20 School Rank";
            } else {
                notion = "Chúc mừng bạn nằm trong top 10 School Rank";
            }
        }
        request.setAttribute("notion", notion);
        request.getRequestDispatcher("schoolRank.jsp").forward(request, response);
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
