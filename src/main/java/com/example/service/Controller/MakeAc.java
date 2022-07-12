package com.example.service.Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Logger;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

public class MakeAc extends HttpServlet {
    @Resource(lookup = "jdbc/MySQL")
    DataSource ds;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/MakeAc.jsp");
        dispatcher.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("Shift_JIS");

        String id = request.getParameter("userid");
        String pass = request.getParameter("password");
        String username = request.getParameter("username");

        try {
            Connection con = ds.getConnection();
            String sql = "select count(userid) from accounts where userid = ?";
            PreparedStatement checkstmt = con.prepareStatement(sql);
            checkstmt.setString(1, id);
            ;
            ResultSet rs = checkstmt.executeQuery();
            Logger logger = Logger.getLogger("showresult");
            logger.info(rs.toString());

            sql = "insert into accounts (\"id\",\"userid\",\"pass\",\"username\") values (null,?,?,?)";
            PreparedStatement pstmt = con.prepareStatement(sql);

            pstmt.setString(1, id);
            pstmt.setString(2, pass);
            pstmt.setString(3, username);

            pstmt.execute();
            pstmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
}
