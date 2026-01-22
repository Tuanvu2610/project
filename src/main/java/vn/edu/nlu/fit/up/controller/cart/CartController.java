package vn.edu.nlu.fit.up.controller.cart;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import vn.edu.nlu.fit.up.cart.Cart;
import vn.edu.nlu.fit.up.cart.CartItem;
import vn.edu.nlu.fit.up.dao.CategoryDao;
import vn.edu.nlu.fit.up.model.Category;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.NumberFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

@WebServlet(name = "CartController", value = "/gio-hang")
public class CartController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/html/giohang.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException {

        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        String action = request.getParameter("action");
        String idRaw = request.getParameter("id");

        if (action == null || idRaw == null) {
            response.setStatus(400);
            response.getWriter().write("{\"error\":\"missing action or id\"}");
            return;
        }

        int id;
        try {
            id = Integer.parseInt(idRaw);
        } catch (NumberFormatException e) {
            response.setStatus(400);
            response.getWriter().write("{\"error\":\"invalid id\"}");
            return;
        }

        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart == null) cart = new Cart();

        if ("cong".equals(action)) {
            cart.cong(id);
        }
        else if ("tru".equals(action)) {
            cart.tru(id);
        }
        else if ("check".equals(action)) {
            boolean checked = Boolean.parseBoolean(request.getParameter("checked"));

            CartItem item = cart.getItem(id);
            if (item != null) {
                item.setChecked(checked);
            }

            session.setAttribute("cart", cart);
            NumberFormat nf = NumberFormat.getInstance(Locale.US);
            String totalFmt = nf.format(cart.getTotal());

            response.getWriter().write(
                    "{ \"total\": \"" + totalFmt + "\" }"
            );
            return;
        }
        else if ("checkall".equals(action)) {
            boolean checked = Boolean.parseBoolean(request.getParameter("checked"));

            for (CartItem item : cart.getItems()) {
                item.setChecked(checked);
            }
            session.setAttribute("cart", cart);
            NumberFormat nf = NumberFormat.getInstance(Locale.US);
            String totalFmt = nf.format(cart.getTotal());

            response.getWriter().write(
                    "{ \"total\": \"" + totalFmt + "\" }"
            );

            return;
        }

        else if ("xoa".equals(action)) {
            cart.delItem(id);
        }
        else {
            response.setStatus(400);
            response.getWriter().write("{\"error\":\"invalid action\"}");
            return;
        }

        session.setAttribute("cart", cart);

        CartItem item = cart.getItem(id);

        if (item == null) {
            response.getWriter().write(
                    "{"
                            + "\"deleted\":true,"
                            + "\"total\":" + cart.getTotal() + ","
                            + "\"totalQty\":" + cart.getTotalQuantity()
                            + "}"
            );
            return;
        }

        response.getWriter().write(
                "{"
                        + "\"quantity\":" + item.getQuantity() + ","
                        + "\"total\":" + cart.getTotal() + ","
                        + "\"checked\":" + item.isChecked() + ","
                        + "\"totalQty\":" + cart.getTotalQuantity()
                        + "}"
        );
    }
}