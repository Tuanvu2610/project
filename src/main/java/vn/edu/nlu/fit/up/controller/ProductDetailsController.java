package vn.edu.nlu.fit.up.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.nlu.fit.up.dao.ProductDao;
import vn.edu.nlu.fit.up.model.Product;
import vn.edu.nlu.fit.up.model.Reviews;
import vn.edu.nlu.fit.up.service.ProductService;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductDetailsController", value = "/chitietsanpham")
public class ProductDetailsController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        ProductService ps = new ProductService();
        Product p = ps.getProduct(id);
        List<Reviews> listReview = ps.getReviewByID(id);
        int totalReview = ps.totalReview(id);
        int star5 = ps.totalReviewByStar(5, id);
        int star4 = ps.totalReviewByStar(4, id);
        int star3 = ps.totalReviewByStar(3, id);
        int star2 = ps.totalReviewByStar(2, id);
        int star1 = ps.totalReviewByStar(1, id);
        int totalProductSold = ps.totalProductSold(id);
        request.setAttribute("totalProductSold", totalProductSold);
        request.setAttribute("star5", star5);
        request.setAttribute("star4", star4);
        request.setAttribute("star3", star3);
        request.setAttribute("star2", star2);
        request.setAttribute("star1", star1);
        request.setAttribute("rw", listReview);
        request.setAttribute("totalReview", totalReview);
        request.setAttribute("p", p);
        request.getRequestDispatcher("/html/ctsp.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}