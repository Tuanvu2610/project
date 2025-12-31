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
        int id = Integer.parseInt(request.getParameter("id"));
        AccountDao ad = new AccountDao();
        Account acc = ad.getAccountById(id);

        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        response.getWriter().write(
                "{"
                        + "\"id\":" + acc.getId() + ","
                        + "\"name\":\"" + acc.getName() + "\","
                        + "\"username\":\"" + acc.getUsername() + "\","
                        + "\"phone\":\"" + acc.getPhone() + "\","
                        + "\"date_of_birth\":\"" + acc.getDate_of_birth() + "\","
                        + "\"role\":\"" + acc.getRole() + "\","
                        + "\"status\":\"" + acc.getStatus() + "\","
                        + "\"registration_date\":\"" + acc.getRegistration_date() + "\""
                        + "}"
        );

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}