package vn.edu.nlu.fit.up.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.nlu.fit.up.model.Product;
import vn.edu.nlu.fit.up.service.ProductService;

import java.io.IOException;

@WebServlet(name = "ProductDetailsController", value = "/chitietsanpham")
public class ProductDetailsController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        ProductService ps = new ProductService();
        Product p = ps.getProduct(id);
        request.setAttribute("p", p);
        request.getRequestDispatcher("html/ctsp.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}