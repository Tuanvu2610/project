package vn.edu.nlu.fit.up.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import vn.edu.nlu.fit.up.dao.AccountDao;
import vn.edu.nlu.fit.up.model.Account;
import vn.edu.nlu.fit.up.model.User;

import java.io.IOException;
import java.time.LocalDate;

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
                        + "\"user_id\":\"" + acc.getUser_id() + "\","
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
        String action = request.getParameter("action");

        if ("delete".equals(action)) {
            deleteUser(request, response);
        } else if ("update".equals(action)) {
            updateUser(request, response);
        } else {
            response.sendRedirect(request.getContextPath() + "/quan-ly-account?msg=error");
        }
    }
    private void deleteUser(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        AccountDao ad = new AccountDao();
        try {
            int id = Integer.parseInt(req.getParameter("id"));
            int result = ad.delete(id);
            if (result > 0) {
                // xóa thành công
                resp.sendRedirect(req.getContextPath() + "/quan-ly-account?msg=deleted");
            } else {
                // không tìm thấy
                resp.sendRedirect(req.getContextPath() + "/quan-ly-account?msg=notfound");
            }
        } catch (Exception e) {
            e.printStackTrace();
            resp.sendRedirect(req.getContextPath() + "/quan-ly-account?msg=error");
        }
    }
    private void updateUser(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        AccountDao ad = new AccountDao();
        Account acc = new Account();
        User user = new User();
        user.setId(id);
        user.setPhone(req.getParameter("phone"));
        user.setEmail(req.getParameter("email"));
        String dobStr = req.getParameter("birthday");
        if (dobStr != null && !dobStr.isEmpty()) {
            user.setDate_of_birth(LocalDate.parse(dobStr));
        }
        acc.setRole(req.getParameter("role"));
        acc.setStatus(req.getParameter("status"));
        try {
            int result = ad.editAcc(acc,user, id);
            if (result > 0) {
                // xóa thành công
                resp.sendRedirect(req.getContextPath() + "/quan-ly-account?msg=editSuccess");
            } else {
                // không tìm thấy
                resp.sendRedirect(req.getContextPath() + "/quan-ly-account?msg=notfoundEdit");
            }
        } catch (Exception e) {
            e.printStackTrace();
            resp.sendRedirect(req.getContextPath() + "/quan-ly-account?msg=error");
        }
    }
}
