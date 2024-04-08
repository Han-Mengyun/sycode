package servlet;

import java.io.*;
import java.sql.SQLException;
import java.util.ArrayList;

import db.Database;
import demo1.Usedata;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "RegisterServlet", value = "/register")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
        //解决网页乱码问题
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");//设置编码

//        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String pwd = request.getParameter("pwd1");
        String pwd2 = request.getParameter("pwd2");
        PrintWriter out = response.getWriter();
        if(pwd.equals(pwd2)){
            try {
                Database database = new Database();
                database.insert(name,pwd);

//                out.println("注册成功！请记住您的id："+database.getUser());
                ArrayList<Usedata> usedata = database.getAlluser();
                System.out.println("总表里面共有"+usedata.size());
//                for(Usedata each:usedata){
//                    System.out.println(each.getId()+each.getName()+each.getPassward());
//
//                }
                int lastIndex = usedata.size() - 1;
                out.println("请牢记您的ID是："+usedata.get(lastIndex).getId() + " 您的用户名是：" + usedata.get(lastIndex).getName());
                out.println("<a href=\"denglu.jsp\">点击这里返回登录</a>");
            } catch (ClassNotFoundException e) {
                throw new RuntimeException(e);
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }


        }else{
            out.println("两次输入的密码不一致！请返回重新注册"+"<a href=\"new_signup.jsp\">返回注册</a>");
        }
//        out.println("输入的账号为："+id+"输入的密码为："+pwd);
    }

    public void destroy() {
    }

    protected void doGet(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
        doPost(request,response);
    }
}