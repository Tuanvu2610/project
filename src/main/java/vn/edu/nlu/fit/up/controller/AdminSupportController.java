package vn.edu.nlu.fit.up.controller;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.nlu.fit.up.dao.SupportDao;

import java.io.IOException;

@WebServlet("/haumai")
public class AdminSupportController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        SupportDao dao = new SupportDao();
        request.setAttribute("supports", dao.getAll());

        request.getRequestDispatcher("/html/haumai.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException {

        int id = Integer.parseInt(request.getParameter("id"));
        String status = request.getParameter("status");

        new SupportDao().updateStatus(id, status);

        request.setCharacterEncoding("UTF-8");
        response.sendRedirect(request.getContextPath() + "/haumai");
    }
}
