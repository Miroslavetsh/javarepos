package org.obrii.mit.dp2021.toloshnyi.toloshnyilab3.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.obrii.mit.dp2021.toloshnyi.toloshnyilab3.data.Data;
import org.obrii.mit.dp2021.toloshnyi.toloshnyilab3.database.DataBaseRefactorer;
import org.obrii.mit.dp2021.toloshnyi.toloshnyilab3.usersStore.UsersStoreRefactorer;
import org.obrii.mit.dp2021.toloshnyi.toloshnyilab3.fileworks.FileWorker;

@WebServlet(name = "DataUsersServlet", urlPatterns = {""})
public class DataUsersServlet extends HttpServlet {

    UsersStoreRefactorer usersRefactorer = new UsersStoreRefactorer(FileWorker.getFileName());
    DataBaseRefactorer dbRefactorer = new DataBaseRefactorer();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (FileWorker.getFileName().equals("")) {
            FileWorker.setFileName(this.getServletContext().getRealPath("") + "data.txt");
            usersRefactorer = new UsersStoreRefactorer(FileWorker.getFileName());
        }

        request.setAttribute("data", usersRefactorer.readDataList());
        request.setAttribute("data", dbRefactorer.readDataList());
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
        
        dbRefactorer.createDataList(new Data(
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

        int userId = Integer.parseInt(request.getParameter("id"));

        usersRefactorer.updateDataList(userId,
                new Data(
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
        
        dbRefactorer.updateDataList(userId,
                new Data(
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
        dbRefactorer.deleteDataList(userId);
        doGet(request, response);
    }

}
