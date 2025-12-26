package vn.edu.nlu.fit.up.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.nlu.fit.up.dao.StatisticDao;
import vn.edu.nlu.fit.up.model.Statistic;

import java.io.IOException;
import java.time.LocalDate;
import java.util.List;
import java.util.Map;

@WebServlet(name = "StatisticController", value = "/thong-ke")
public class StatisticController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String yearParam = request.getParameter("year");
        String monthParam = request.getParameter("month");

        StatisticDao dao = new StatisticDao();
        List<Statistic> stats;

        int year = Integer.parseInt(
                request.getParameter("year") != null
                        ? request.getParameter("year")
                        : String.valueOf(LocalDate.now().getYear())
        );

        Map<Integer, Integer> rawData = dao.orderCountByYear(year);

        if (monthParam == null || monthParam.equals("0")) {
            // 👉 Tất cả tháng
            stats = dao.byYear(year);
        } else {
            int month = Integer.parseInt(monthParam);
            stats = dao.byYearMonth(year, month);
        }

        long revenue = 0;
        int orders = 0;
        int products = 0;

        for (Statistic s : stats) {
            revenue += s.getRevenue();
            orders += s.getTotalOrders();
            products += s.getTotalProducts();
        }

        int maxOrders = rawData.values().stream()
                .max(Integer::compareTo)
                .orElse(1);

// mảng 12 tháng mặc định 0%
        int[] chartData = new int[12];
        for (int i = 0; i < 12; i++) {
            chartData[i] = rawData.getOrDefault(i + 1, 0);
        }

        request.setAttribute("stats", stats);
        request.setAttribute("totalRevenue", revenue);
        request.setAttribute("totalOrders", orders);
        request.setAttribute("totalProducts", products);

        request.setAttribute("chartData", chartData);
        request.setAttribute("year", year);
        request.setAttribute("month", monthParam == null ? "0" : monthParam);

        request.getRequestDispatcher("/html/thongke.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
