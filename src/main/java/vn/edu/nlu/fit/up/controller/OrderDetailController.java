package vn.edu.nlu.fit.up.controller;

import vn.edu.nlu.fit.up.dao.OrderDao;
import vn.edu.nlu.fit.up.dao.OrderItemDao;
import vn.edu.nlu.fit.up.model.Order;
import vn.edu.nlu.fit.up.model.OrderItem;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

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

        String idRaw = request.getParameter("id");
        if (idRaw == null) {
            response.sendRedirect(request.getContextPath() + "/donhang");
            return;
        }

        int orderId;
        try {
            orderId = Integer.parseInt(idRaw);
        } catch (NumberFormatException e) {
            response.sendRedirect(request.getContextPath() + "/donhang");
            return;
        }

        Order order = orderDao.getById(orderId);
        if (order == null) {
            response.sendRedirect(request.getContextPath() + "/donhang");
            return;
        }

        List<OrderItem> items = orderItemDao.getItemsByOrderId(orderId);
        order.setItems(items);

        // 4️⃣ Đẩy dữ liệu sang JSP
        request.setAttribute("order", order);
        request.setAttribute("items", items);

        request.getRequestDispatcher("/html/order_detail.jsp")
                .forward(request, response);
    }
}
