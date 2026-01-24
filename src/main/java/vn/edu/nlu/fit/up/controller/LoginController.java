package vn.edu.nlu.fit.up.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

import vn.edu.nlu.fit.up.model.Account;
import vn.edu.nlu.fit.up.service.AuthService;
import vn.edu.nlu.fit.up.model.User;
import vn.edu.nlu.fit.up.utils.Hash;

@WebServlet(name = "LoginController", value = "/login")
public class LoginController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.getRequestDispatcher("html/login.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if("register".equals(action)){
            actionRegister(request, response);
        }else if("forgot".equals(action)){
            actionForgotPass(request, response);
        }else{
            actionLogin(request, response);
        }
    }

    //dang nhap
    private void actionLogin(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String pass = request.getParameter("password");
        AuthService as = new AuthService();
        String hashPass = Hash.md5(pass);
        Account acc = as.login(username, hashPass);

        if(acc != null){
            HttpSession session = request.getSession();
            session.setAttribute("auth", acc);
            response.sendRedirect("home");
        } else {
            request.setAttribute("error", "Tài khoản hoặc mật khẩu không đúng!");
            request.getRequestDispatcher("html/login.jsp").forward(request, response);
        }
    }

    //dang ky
    private void actionRegister(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        AuthService as = new AuthService();

        String username = request.getParameter("dk_username");
        String password = request.getParameter("dk_pass");
        String confirmPassword = request.getParameter("confirm_pass");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String error = validateRegistration(username, password, confirmPassword, name, email);

        if (error != null) {
            request.setAttribute("registerError", error);
            request.setAttribute("user", username);
            request.setAttribute("name", name);
            request.setAttribute("email", email);
            request.setAttribute("showSignup", true);
            request.getRequestDispatcher("html/login.jsp").forward(request, response);
            return;
        }

        if (as.isUsernameExist(username)) {
            request.setAttribute("registerError", "Tên đăng nhập đã tồn tại. Vui lòng chọn tên khác.");
            request.setAttribute("user", username);
            request.setAttribute("name", name);
            request.setAttribute("email", email);
            request.setAttribute("showSignup", true);
            request.getRequestDispatcher("html/login.jsp").forward(request, response);
            return;
        }

        try {
            User u = new User();
            u.setName(name);
            u.setEmail(email);
            u.setPhone("");
            u.setSex("male");
            u.setAddress_id(1);
            u.setImg("");

            Account acc = new Account();
            acc.setUsername(username);
            acc.setPassword(Hash.md5(password));
            acc.setRole("user");
            acc.setStatus("active");
            acc.setRegistration_date(java.time.LocalDate.now());

            boolean success = as.register(acc, u);

            if (success) {
                Account logged = as.login(username, Hash.md5(password));
                if (logged != null) {
                    HttpSession session = request.getSession();
                    session.setAttribute("auth", logged);
                }
                response.sendRedirect("login");
            } else {
                request.setAttribute("registerError", "Đăng ký thất bại. Vui lòng thử lại sau.");
                request.getRequestDispatcher("html/login.jsp").forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("registerError", "Có lỗi xảy ra trong quá trình đăng ký.");
            request.getRequestDispatcher("html/login.jsp").forward(request, response);
            request.setAttribute("success", "Đăng ký thành công, vui lòng đăng nhập");
            request.getRequestDispatcher("html/login.jsp").forward(request, response);
        }
    }

    private String validateRegistration(String username, String password, String confirmPassword, String name, String email) {
        if (username == null || username.trim().isEmpty()) {
            return "Tên đăng nhập không được để trống";
        }
        if (password == null || password.trim().isEmpty()) {
            return "Mật khẩu không được để trống";
        }
        if (confirmPassword == null || confirmPassword.trim().isEmpty()) {
            return "Xác nhận mật khẩu không được để trống";
        }
        if (name == null || name.trim().isEmpty()) {
            return "Tên không được để trống";
        }
        if (email == null || email.trim().isEmpty()) {
            return "Email không được để trống";
        }
        if (!password.equals(confirmPassword)) {
            return "Mật khẩu và xác nhận mật khẩu không khớp";
        }
        if (password.length() < 8) {
            return "Mật khẩu phải có ít nhất 8 ký tự";
        }
        if (!username.matches("^[a-zA-Z0-9]+$")) {
            return "Tên đăng nhập chỉ được chứa chữ cái và số";
        }
        if (!password.matches("^[a-zA-Z0-9._@]+$")) {
            return "Mật khẩu chỉ được chứa chữ cái, số, @, dấu chấm, gạch dưới";
        }
        return null;
    }

    //quen mat khau
    private void actionForgotPass(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("restore_email");
        AuthService as = new AuthService();

        if (email == null || email.trim().isEmpty()) {
            request.setAttribute("error", "Vui lòng nhập email khôi phục.");
            request.getRequestDispatcher("html/login.jsp").forward(request, response);
            return;
        }

        User u = as.findByEmail(email);
        if (u == null) {
            request.setAttribute("error", "Email không tồn tại trong hệ thống.");
            request.getRequestDispatcher("html/login.jsp").forward(request, response);
            return;
        }
        request.setAttribute("success",
                "Yêu cầu khôi phục mật khẩu đã được gửi. Vui lòng kiểm tra email.");
        request.getRequestDispatcher("html/login.jsp").forward(request, response);
    }
}