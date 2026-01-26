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

@WebServlet("/gomtrangtri")
public class ProductTrangTriController extends HttpServlet {

    private ProductService productService;

    @Override
    public void init() {
        productService = new ProductService();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Product> discountProducts = productService.discountList();
        request.setAttribute("discountProducts", discountProducts);

        // ===== GỐM TRANG TRÍ (category con) =====
        List<Product> listBinh       = productService.getByCategory(10); // Bình gốm
        List<Product> listLucBinh    = productService.getByCategory(11); // Lục bình
        List<Product> listTuong      = productService.getByCategory(12); // Tượng gốm
        List<Product> listTranh      = productService.getByCategory(13); // Tranh gốm
        List<Product> listDia        = productService.getByCategory(14); // Đĩa trang trí
        List<Product> listDen        = productService.getByCategory(15); // Đèn gốm
        List<Product> listPhongThuy  = productService.getByCategory(16); // Gốm phong thủy
        List<Product> listPhongKhach = productService.getByCategory(17); // Gốm trang trí phòng khách

        // ===== setAttribute =====
        request.setAttribute("listBinh", listBinh);
        request.setAttribute("listLucBinh", listLucBinh);
        request.setAttribute("listTuong", listTuong);
        request.setAttribute("listTranh", listTranh);
        request.setAttribute("listDia", listDia);
        request.setAttribute("listDen", listDen);
        request.setAttribute("listPhongThuy", listPhongThuy);
        request.setAttribute("listPhongKhach", listPhongKhach);

        request.getRequestDispatcher("/html/gomtrangtri.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Chưa xử lý POST
    }
}