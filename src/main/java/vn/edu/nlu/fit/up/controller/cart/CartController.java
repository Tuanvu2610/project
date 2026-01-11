package vn.edu.nlu.fit.up.controller.cart;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.nlu.fit.up.dao.CategoryDao;
import vn.edu.nlu.fit.up.model.Category;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet(name = "CartController", value = "/gio-hang")
public class CartController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CategoryDao cd = new CategoryDao();
        List<Category> parents = cd.getCategoryParent();
        Map<Integer, List<Category>> childrenMap = new HashMap<>();
        for (Category pr : parents) {
            childrenMap.put(pr.getId(),
                    cd.getCategoryChild(pr.getId()));
        }
        request.setAttribute("parents", parents);
        request.setAttribute("children", childrenMap);
        request.getRequestDispatcher("/html/giohang.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}