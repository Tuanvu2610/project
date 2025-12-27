package vn.edu.nlu.fit.up.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.nlu.fit.up.dao.AccountDao;

import java.io.IOException;

@WebServlet(name = "QuanLyAccountController", value = "/quan-ly-account")
public class QuanLyAccountController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    request.setCharacterEncoding("utf-8");
    AccountDao ad = new AccountDao();
    request.setAttribute("listAcc", ad.getAccount());
    request.setAttribute("totalAcc", ad.totalAccount());
    request.setAttribute("totalActive", ad.getAccountByStatus("active"));
    request.setAttribute("totalPending",  ad.getAccountByStatus("pending"));
    request.setAttribute("totalBanned",  ad.getAccountByStatus("banned"));
    request.getRequestDispatcher("/html/quanlyaccount.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}