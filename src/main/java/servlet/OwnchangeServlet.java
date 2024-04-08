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
import user.UserInfo;

import static java.lang.System.out;

@WebServlet(name = "OwnchangeServlet", value = "/ownchange")
public class OwnchangeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
        //解决网页乱码问题
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");//设置编码

        //从修改界面
        String gender = request.getParameter("gender");
        String email = request.getParameter("email");
        String success_data = request.getParameter("successDate");

        try {
            Database database = new Database();
            //从数据库中按ID读取某人信息，写入个人中心，属于信息展示

            HttpSession session = request.getSession();
            int uId = (int) session.getAttribute("loggedInUserId");
            System.out.println("修改界面我获取的uId是："+uId);
            //抓取到数据
            UserInfo uselist = database.Updateown(gender,email,success_data,uId);
            request.setAttribute("userInfo",uselist);
            // 转发到显示用户信息的JSP页面
            request.getRequestDispatcher("myword.jsp").forward(request, response);
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