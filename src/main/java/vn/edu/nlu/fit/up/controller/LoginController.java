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
        String username = request.getParameter("username");
        String pass = request.getParameter("password");
        AuthService as = new AuthService();
        User u = as.login(username, pass);

        if(u!=null){
            HttpSession session = request.getSession();
            session.setAttribute("auth",u);
            response.sendRedirect("home");
        }else{
            request.setAttribute("error", "Tài khoản hoặc mật khẩu không đúng!");
            request.getRequestDispatcher("html/login.jsp").forward(request,response);
        }
    }
}