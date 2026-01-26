package vn.edu.nlu.fit.up.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.nlu.fit.up.dao.CategoryDao;
import vn.edu.nlu.fit.up.model.Account;
import vn.edu.nlu.fit.up.model.Category;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet(name = "HeaderController", value = "/header")
public class HeaderController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        CategoryDao cd = new CategoryDao();
        List<Category> parents = cd.getCategoryParent();
        HttpSession session = request.getSession(false);
        Account acc = null;
        if (session != null) {
            acc = (Account) session.getAttribute("auth");
        }
        if (acc == null || !"admin".equals(acc.getRole())) {
            parents.removeIf(c -> c.getLink() != null && c.getLink().contains("quan-ly-account"));
        }
        Map<Integer, List<Category>> children = new HashMap<>();
        for (Category p : parents) {
            children.put(p.getId(), cd.getCategoryChild(p.getId()));
        }
        request.setAttribute("parents", parents);
        request.setAttribute("children", children);
        request.getRequestDispatcher("/common/header.jsp").include(request, response);
    }
}
