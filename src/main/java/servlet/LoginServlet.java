package servlet;

import java.io.*;
import java.sql.SQLException;

import db.Database;
import demo1.Usedata;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "LoginServlet", value = "/Login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
        //解决网页乱码问题
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");//设置编码

        int id = Integer.parseInt(request.getParameter("name"));
        String pwd = request.getParameter("pwd");
        PrintWriter out = response.getWriter();

        try {
            Database database = new Database();
            Usedata usedata = database.login(id,pwd);
            if(usedata==null){
                out.println("该用户不存在或密码错误"+"<a href=\"denglu.jsp\">返回登录</a>");
            }
            else{
                // 将用户ID保存到会话
                HttpSession session = request.getSession();
                session.setAttribute("loggedInUserId",id);//我把ID保存到了loggedInUserId里，可以提取
                System.out.println("我获得的ID是："+id);
                out.println("欢迎登陆！"+usedata.getName()+"<a href=\"ownimg1\">点击这里进入个人中心</a>");
            }
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