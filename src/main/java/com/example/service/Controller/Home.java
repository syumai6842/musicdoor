package com.example.service.Controller;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import com.example.service.Model.Beans.PostBeans;

public class Home extends HttpServlet {

    @Resource(lookup = "jdbc/MySQL")
    DataSource ds;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<PostBeans> posts = new ArrayList<PostBeans>();

        try {
            posts = straging();
        } catch (InstantiationException | IllegalAccessException | IllegalArgumentException | InvocationTargetException
                | NoSuchMethodException | SecurityException | SQLException e) {
            e.printStackTrace();
        }
        // response.getWriter().append(posts.get(0).getArtist());
        request.setAttribute("posts", posts);
        // フォワード
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/Home.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.getWriter().append("this is doPost");
    }

    public List<PostBeans> straging() throws SQLException, InstantiationException, IllegalAccessException,
            IllegalArgumentException, InvocationTargetException, NoSuchMethodException, SecurityException {
        List<PostBeans> posts = new ArrayList<PostBeans>();

        Connection con = ds.getConnection();
        Statement stmt = con.createStatement();
        String sql = "select * from posts";
        ResultSet rs = stmt.executeQuery(sql);

        while (rs.next()) {
            PostBeans pb = PostBeans.class.getDeclaredConstructor().newInstance();
            pb.setFrom(rs.getInt("fromaccount"));
            pb.setTo(rs.getInt("toaccount"));
            pb.setArtist(rs.getString("artist"));
            pb.setName(rs.getString("title"));
            pb.setComment(rs.getString("comment"));
            pb.setUrl(rs.getString("url"));
            pb.setDate(rs.getDate("time"));
            posts.add(pb);
        }

        Logger logger = Logger.getLogger("posts");
        logger.info(posts.get(0).getName());

        return posts;
    }
}
