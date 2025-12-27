package vn.edu.nlu.fit.up.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.nlu.fit.up.dao.AccountDao;
import vn.edu.nlu.fit.up.model.Account;

import java.io.IOException;

@WebServlet(name = "AccountDetailController", value = "/account-detail")
public class AccountDetailController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idRaw = request.getParameter("id");
        if (idRaw == null) {
            response.sendRedirect("quan-ly-account");
            return;
        }
        int id = Integer.parseInt(idRaw);
        AccountDao ad = new AccountDao();
        Account acc = ad.getAccountById(id);
        request.setAttribute("listAcc", ad.getAccount());
        request.setAttribute("account", acc);

        request.getRequestDispatcher("/html/quanlyaccount.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}