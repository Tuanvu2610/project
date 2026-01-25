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

@WebServlet("/donhang")
public class OrderController extends HttpServlet {

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

        String detailId = request.getParameter("detailId");
        if (detailId != null) {
            int orderId = Integer.parseInt(detailId);

            Order order = orderDao.getById(orderId);
            List<OrderItem> items = orderItemDao.getItemsByOrderId(orderId);

            request.setAttribute("order", order);
            request.setAttribute("items", items);

            request.getRequestDispatcher("/html/order_detail.jsp")
                    .forward(request, response);
            return;
        }

        List<Order> pendingOrders  = orderDao.getOrdersByStatus("pending");     // Chưa giao
        List<Order> shippingOrders = orderDao.getOrdersByStatus("processing");  // Đang vận chuyển
        List<Order> doneOrders     = orderDao.getOrdersByStatus("completed");   // Đã giao

        request.setAttribute("pendingOrders", pendingOrders);
        request.setAttribute("shippingOrders", shippingOrders);
        request.setAttribute("doneOrders", doneOrders);
        request.setAttribute("doneCount", doneOrders.size());

        request.getRequestDispatcher("/html/donhang.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException {

        String orderIdRaw = request.getParameter("orderId");
        String action = request.getParameter("action");

        if (orderIdRaw != null && action != null) {
            int orderId = Integer.parseInt(orderIdRaw);

            switch (action) {
                case "CONFIRM":
                    orderDao.updateStatus(orderId, "processing");
                    break;

                case "CANCEL":
                    orderDao.updateStatus(orderId, "cancelled");
                    break;
            }
        }

        response.sendRedirect(request.getContextPath() + "/donhang");
    }
}
