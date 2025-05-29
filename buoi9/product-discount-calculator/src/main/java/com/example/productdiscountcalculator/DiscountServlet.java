package com.example.productdiscountcalculator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "DiscountServlet", value = "/index")
public class DiscountServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html; charset=UTF-8");
        resp.setCharacterEncoding("UTF-8");

        String description = req.getParameter("description");
        double price = Double.parseDouble(req.getParameter("price"));
        double discount_percent = Double.parseDouble(req.getParameter("discount_percent"));

        double discount_amount = price * discount_percent * 0.01;
        double discount_price = price - discount_amount;

        PrintWriter out = resp.getWriter();
        out.println("<html>");
        out.println("<p style='font-weight:bold'> Mô tả: </p>" +"<p>" + description + "</p>");
        out.println("<p style='font-weight:bold'> Giá: </p>" + "<p>" + price + "</p>");
        out.println("<p style='font-weight:bold'> Chiết khấu: </p>"  + discount_percent + "%</p>");
        out.println("<p style='font-weight:bold'> Lượng Chiết khấu: </p>" + "<p>" + discount_amount + "</p>");
        out.println("<p style='font-weight:bold'> Giá sau chiết khấu: </p>" + "<p>" + discount_price + "</p>");
        out.println("</html>");
    }
}
