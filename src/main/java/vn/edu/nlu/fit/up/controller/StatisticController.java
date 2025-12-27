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
        int year = yearParam != null ? Integer.parseInt(yearParam) : LocalDate.now().getYear();
        int month = monthParam != null ? Integer.parseInt(monthParam) : 0;

        Map<Integer, Long> revenueData = dao.revenueByYear(year);
        long maxRevenue = revenueData.values().stream().max(Long::compareTo).orElse(1L);
        int[] chartData = new int[12];
        for (int m = 1; m <= 12; m++) {
            long rev = revenueData.getOrDefault(m, 0L);
            chartData[m - 1] = (int) Math.round((rev * 100.0) / maxRevenue); // chuẩn hóa cột theo max
        }

        List<Statistic> stats;
        if (month == 0) {
            stats = dao.byYear(year);
        } else {
            stats = dao.byYearMonth(year, month);
        }

        long totalRevenue = stats.stream().mapToLong(Statistic::getRevenue).sum();
        int totalOrders = stats.stream().mapToInt(Statistic::getTotalOrders).sum();
        int totalProducts = stats.stream().mapToInt(Statistic::getTotalProducts).sum();

        request.setAttribute("stats", stats);
        request.setAttribute("totalRevenue", totalRevenue);
        request.setAttribute("totalOrders", totalOrders);
        request.setAttribute("totalProducts", totalProducts);
        request.setAttribute("year", year);
        request.setAttribute("month", String.valueOf(month));
        request.setAttribute("chartData", chartData);

        request.getRequestDispatcher("/html/thongke.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
