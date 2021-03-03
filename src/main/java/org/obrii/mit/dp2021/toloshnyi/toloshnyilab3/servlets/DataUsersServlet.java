/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.obrii.mit.dp2021.toloshnyi.toloshnyilab3.servlets;

import org.obrii.mit.dp2021.toloshnyi.toloshnyilab3.data.DataStorageRefactorerInterface;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.obrii.mit.dp2021.toloshnyi.toloshnyilab3.data.Data;
import org.obrii.mit.dp2021.toloshnyi.toloshnyilab3.usersStore.UsersStoreRefactorer;

@WebServlet(name = "DataUsersServlet", urlPatterns = {"/"})
public class DataUsersServlet extends HttpServlet {

    DataStorageRefactorerInterface usersRefactorer = new UsersStoreRefactorer();
    
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
            out.println("<title>Servlet DataUsersServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet DataUsersServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("data", usersRefactorer.readDataList());
        request.getRequestDispatcher("home.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        usersRefactorer.createDataList(new Data(
                Integer.parseInt(request.getParameter("id")),
                request.getParameter("patreon"),
                request.getParameter("name"),
                Integer.parseInt(request.getParameter("age")),
                request.getParameter("email"),
                request.getParameter("subscribed"),
                request.getParameter("notification"),
                Integer.parseInt(request.getParameter("likes")),
                Integer.parseInt(request.getParameter("dislikes")),
                request.getParameter("comment")
        ));

        doGet(request, response);
    }

    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        request.getRequestDispatcher("form.jsp").forward(request, response);
        
        int userId = Integer.parseInt(request.getParameter("id"));
        
        usersRefactorer.updateDataList(userId, new Data(
                userId,
                request.getParameter("patreon"),
                request.getParameter("name"),
                Integer.parseInt(request.getParameter("age")),
                request.getParameter("email"),
                request.getParameter("subscribed"),
                request.getParameter("notification"),
                Integer.parseInt(request.getParameter("likes")),
                Integer.parseInt(request.getParameter("dislikes")),
                request.getParameter("comment")
        ));
        
        doGet(request, response);
    }

    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        int userId = Integer.parseInt(request.getParameter("id"));
        
        usersRefactorer.deleteDataList(userId);
        doGet(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
