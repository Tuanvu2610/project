package vn.edu.nlu.fit.up.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.nlu.fit.up.dao.AccountDao;
import vn.edu.nlu.fit.up.model.Account;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "QuanLyAccountController", value = "/quan-ly-account")
public class QuanLyAccountController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        AccountDao ad = new AccountDao();
        int page = 1;
        try {
            page = Integer.parseInt(request.getParameter("page"));
        } catch (Exception e) {
            page = 1;
        }
        int pageSize = 10;
        AccountDao dao = new AccountDao();
        List<Account> list = dao.getAccountByPage(page, pageSize);
        int total = dao.totalAccount();
        int totalPages = (int) Math.ceil((double) total / pageSize);
        request.setAttribute("listAcc", list);
        request.setAttribute("currentPage", page);
        request.setAttribute("totalPages", totalPages);
        request.setAttribute("totalAcc", total);
        request.setAttribute("totalActive", ad.getAccountByStatus("active"));
        request.setAttribute("totalPending",  ad.getAccountByStatus("pending"));
        request.setAttribute("totalBanned",  ad.getAccountByStatus("banned"));
        request.getRequestDispatcher("/html/quanlyaccount.jsp").forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}