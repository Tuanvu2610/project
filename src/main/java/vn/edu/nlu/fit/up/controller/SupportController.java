package vn.edu.nlu.fit.up.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;

import vn.edu.nlu.fit.up.dao.SupportDao;
import vn.edu.nlu.fit.up.model.SupportRequest;

@WebServlet("/support")
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024,   // 1MB
        maxFileSize = 1024 * 1024 * 5,      // 5MB
        maxRequestSize = 1024 * 1024 * 10   // 10MB
)
public class SupportController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("image".equals(action)) {
            String fileName = request.getParameter("name");

            if (fileName == null || fileName.isEmpty()) {
                response.sendError(HttpServletResponse.SC_NOT_FOUND);
                return;
            }

            String uploadDir = "D:/uploads/support";
            File file = new File(uploadDir, fileName);

            if (!file.exists()) {
                response.sendError(HttpServletResponse.SC_NOT_FOUND);
                return;
            }

            String mime = getServletContext().getMimeType(file.getName());
            if (mime == null) mime = "application/octet-stream";
            response.setContentType(mime);
            response.setContentLengthLong(file.length());

            try (var in = new java.io.FileInputStream(file);
                 var out = response.getOutputStream()) {
                in.transferTo(out);
            }
            return;
        }
        request.getRequestDispatcher("/html/yeucauhotro.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        String fullName = request.getParameter("fullName");
        String email = request.getParameter("email");
        String category = request.getParameter("category");
        String title = request.getParameter("title");
        String description = request.getParameter("description");

        Part imagePart = request.getPart("supportImage");
        String imagePath = null;

        if (imagePart != null && imagePart.getSize() > 0) {

            String originalName = Paths.get(imagePart.getSubmittedFileName())
                    .getFileName()
                    .toString();

            String safeName = originalName.replaceAll("[^a-zA-Z0-9\\.]", "_");

            String fileName = System.currentTimeMillis() + "_" + safeName;

            String uploadDir = getServletContext().getRealPath("/upload/support");
            File dir = new File(uploadDir);
            if (!dir.exists()) dir.mkdirs();

            imagePart.write(uploadDir + File.separator + fileName);

            imagePath = "upload/support/" + fileName;
        }

        SupportRequest sr = new SupportRequest();
        sr.setFullName(fullName);
        sr.setEmail(email);
        sr.setCategory(category);
        sr.setTitle(title);
        sr.setDescription(description);
        sr.setImage(imagePath);
        sr.setStatus("Chờ xử lý");

        new SupportDao().insert(sr);

        request.getSession().setAttribute(
                "flash_success",
                "Yêu cầu hỗ trợ đã được gửi thành công!"
        );

        response.sendRedirect(request.getContextPath() + "/support");
    }
}
