package servlet;

import java.io.*;
import java.nio.file.FileStore;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.Map;

import db.Database;
import demo1.Usedata;
import demo1.Usedateimg;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import user.FyInfo;
import user.UserInfo;
import user.infInfo;

import static java.lang.System.out;

@WebServlet(name = "insertShowServlet", value = "/insertshow")
public class insertShowServlet extends HttpServlet {
    private int storedItemId;
    protected void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException {
        //解决网页乱码问题
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");//设置编码

//        String keywords = request.getParameter("insertwords");
        String temId = request.getParameter("itemId");
        // 查询并保存结果
        try {
            Database database = new Database();
            System.out.println("这里我获取的uId是："+temId);
            if (temId != null) {
                int itemId = Integer.parseInt(temId);
                this.storedItemId = itemId; // 将itemId存入类级别变量
            }
            HttpSession session = request.getSession();
            session.setAttribute("storedItemId",storedItemId);
            UserInfo uselist = database.getUserInfo(storedItemId);
            request.setAttribute("userInfo",uselist);
            // 转发到显示用户信息的JSP页面
            request.getRequestDispatcher("myword1.jsp").forward(request, response);
            //转发
//            request.getRequestDispatcher("insert.jsp").forward(request,response);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }
    protected void doGet(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
        doPost(request,response);
    }
}