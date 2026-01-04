package vn.edu.nlu.fit.up.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import vn.edu.nlu.fit.up.dao.CategoryDao;
import vn.edu.nlu.fit.up.model.Category;
import vn.edu.nlu.fit.up.service.AuthService;
import vn.edu.nlu.fit.up.model.User;

@WebServlet(name = "LoginController", value = "/login")
public class LoginController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CategoryDao cd = new CategoryDao();
        List<Category> parents = cd.getCategoryParent();

        Map<Integer, List<Category>> childrenMap = new HashMap<>();
        for (Category p : parents) {
            childrenMap.put(p.getId(),
                    cd.getCategoryChild(p.getId()));
        }
        request.setAttribute("parents", parents);
        request.setAttribute("children", childrenMap);
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
        User u = as.login(username, pass);

        if(u != null){
            HttpSession session = request.getSession();
            session.setAttribute("auth", u);
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
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String email = request.getParameter("email");
        String error = validateRegistration(username, password, confirmPassword, firstname, lastname);

        if (error != null) {
            request.setAttribute("registerError", error);
            request.setAttribute("user", username);
            request.setAttribute("first", firstname);
            request.setAttribute("last", lastname);
            request.setAttribute("email", email);
            request.getRequestDispatcher("html/login.jsp").forward(request, response);
            return;
        }

        if (as.isUsernameExist(username)) {
            request.setAttribute("registerError", "Tên đăng nhập đã tồn tại. Vui lòng chọn tên khác.");
            request.setAttribute("user", username);
            request.setAttribute("first", firstname);
            request.setAttribute("last", lastname);
            request.setAttribute("email", email);
            request.getRequestDispatcher("html/login.jsp").forward(request, response);
            return;
        }

        try {
            User u = new User();
            u.setUsername(username);
            u.setPassword(password);
            u.setFirstname(firstname);
            u.setLastname(lastname);
            u.setName(lastname + " " + firstname);
            u.setEmail("");
            u.setPhone("");
            u.setSex("male");
            u.setAddress_id(1);
            u.setImg("");

            boolean isRegistered = as.register(u);

            if (isRegistered) {
                User registeredUser = as.login(username, password);
                if (registeredUser != null) {
                    HttpSession session = request.getSession();
                    session.setAttribute("auth", registeredUser);
                }
                response.sendRedirect("home");
            } else {
                request.setAttribute("regiserror", "Đăng ký thất bại. Vui lòng thử lại sau.");
                request.getRequestDispatcher("html/login.jsp").forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("registerError", "Có lỗi xảy ra trong quá trình đăng ký.");
            request.getRequestDispatcher("html/login.jsp").forward(request, response);
        }
    }

    private String validateRegistration(String username, String password, String confirmPassword, String firstname, String lastname) {
        if (username == null || username.trim().isEmpty()) {
            return "Tên đăng nhập không được để trống";
        }
        if (password == null || password.trim().isEmpty()) {
            return "Mật khẩu không được để trống";
        }
        if (confirmPassword == null || confirmPassword.trim().isEmpty()) {
            return "Xác nhận mật khẩu không được để trống";
        }
        if (!password.equals(confirmPassword)) {
            return "Mật khẩu và xác nhận mật khẩu không khớp";
        }
        if (password.length() < 6) {
            return "Mật khẩu phải có ít nhất 6 ký tự";
        }
        if (firstname == null || firstname.trim().isEmpty()) {
            return "Họ không được để trống";
        }
        if (lastname == null || lastname.trim().isEmpty()) {
            return "Tên không được để trống";
        }
        //kiem tra dinh dang cua username
        if (!username.matches("^[a-zA-Z0-9._]+$")) {
            return "Tên đăng nhập chỉ được chứa chữ cái, số, dấu chấm và gạch dưới";
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