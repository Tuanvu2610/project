package vn.edu.nlu.fit.up.controller;

import vn.edu.nlu.fit.up.dao.OrderDao;
import vn.edu.nlu.fit.up.dao.OrderItemDao;
import vn.edu.nlu.fit.up.model.Order;
import vn.edu.nlu.fit.up.model.OrderItem;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.util.List;

@WebServlet("/order-detail")
public class OrderDetailController extends HttpServlet {

    private OrderDao orderDao;
    private OrderItemDao orderItemDao;

    @Override
    public void init() {
        orderDao = new OrderDao();
        orderItemDao = new OrderItemDao();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int orderId = Integer.parseInt(request.getParameter("id"));

        // Lấy đơn hàng
        Order order = orderDao.getById(orderId);

        // Lấy danh sách sản phẩm trong đơn
        List<OrderItem> items = orderItemDao.getItemsByOrderId(orderId);
        order.setItems(items);

        request.setAttribute("order", order);
        request.setAttribute("items", items);

        request.getRequestDispatcher("/html/order_detail.jsp")
                .forward(request, response);
    }
}
