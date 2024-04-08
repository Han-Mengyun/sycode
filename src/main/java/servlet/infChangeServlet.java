package servlet;

import java.io.*;
import java.nio.file.FileStore;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Enumeration;

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

@WebServlet(name = "infChangeServlet", value = "/infChange")
public class infChangeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
        //解决网页乱码问题
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");//设置编码

        try {
            Database database = new Database();
            //从数据库中按ID读取某人信息，写入个人中心，属于信息展示
            HttpSession session = request.getSession();
            int uId = (int) session.getAttribute("loggedInUserId");
            System.out.println("我的消息界面我获取的uId是："+uId);

            //抓取信息发送界面
            String myimg = request.getParameter("myimg");
            int receive_id = Integer.parseInt(request.getParameter("receive_id"));
            String send_time = request.getParameter("send_time");
            System.out.println("我已经抓到了新消息！");

            infInfo uselist1 = database.InsertInformation(uId,myimg,receive_id);
//            request.setAttribute("userInfo",uselist);
            ArrayList<infInfo> uselist = database.getinfInfo(uId);
            System.out.println("准备转发！");
            // 转发到显示用户信息的JSP页面
            request.getRequestDispatcher("information.jsp").forward(request, response);
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