package vn.edu.nlu.fit.up.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.nlu.fit.up.model.Product;
import vn.edu.nlu.fit.up.service.ProductService;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductTrangTriController", value = "/gom-trang-tri" )
public class ProductTrangTriController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        ProductService ps = new ProductService();

        List<Product> discountProducts = ps.discountList();

        List<Product> listBinh       = ps.getByCategory(10);
        List<Product> listLucBinh    = ps.getByCategory(11);
        List<Product> listTuong      = ps.getByCategory(12);
        List<Product> listTranh      = ps.getByCategory(13);
        List<Product> listDia        = ps.getByCategory(14);
        List<Product> listPhongThuy  = ps.getByCategory(15);
        List<Product> listPhongKhach = ps.getByCategory(16);

        request.setAttribute("discountProducts", discountProducts);
        request.setAttribute("listBinh", listBinh);
        request.setAttribute("listLucBinh", listLucBinh);
        request.setAttribute("listTuong", listTuong);
        request.setAttribute("listTranh", listTranh);
        request.setAttribute("listDia", listDia);
        request.setAttribute("listPhongThuy", listPhongThuy);
        request.setAttribute("listPhongKhach", listPhongKhach);

        request.getRequestDispatcher("/html/gomtrangtri.jsp")
                .forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}