package db;
import demo1.FeiyiDB;
import demo1.Usedata;
import demo1.Usedateimg;
import user.FyInfo;
import user.UserInfo;
import user.infInfo;
import user.tb_url;
//import demo1.

import java.sql.*;
import java.time.Instant;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static java.lang.System.*;

public class Database {
    Connection conn = null;
    public Database() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.cj.jdbc.Driver");
//        this.conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db1?characterEncoding=utf-8");
//        System.out.println(conn);
        this.conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db1?characterEncoding=utf-8","root","root");
    }



    public void close() throws SQLException{
        conn.close();
    }
    public static void closePs(PreparedStatement ps) {
        if (ps != null) {
            try {
                ps.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
    public static void closeRs(ResultSet rs) {
        if (rs != null) {
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
    public void showConnection(){
        if(conn==null){
            out.println("数据库连接失败！");
        }
        else{
            out.println("数据库连接成功！");
        }
    }
    //向user_login表里添加数据
    /*public void insert(String name,String pwd) throws SQLException {
        PreparedStatement prep = conn.prepareStatement("insert into user_login values (null,?,?)");
        prep.setString(1,name);
        prep.setString(2,pwd);
        prep.execute();
    }*/

    public void insert(String name, String pwd) throws SQLException {
        // 关闭自动提交，开始事务
        conn.setAutoCommit(false);

        try (PreparedStatement addUserLogin = conn.prepareStatement("INSERT INTO user_login VALUES (null, ?, ?)", Statement.RETURN_GENERATED_KEYS)) {

            addUserLogin.setString(1, name);
            addUserLogin.setString(2, pwd);

            addUserLogin.executeUpdate();

            // 获取新插入用户登录记录的自增主键
            ResultSet generatedKeys = addUserLogin.getGeneratedKeys();
            if (generatedKeys.next()) {
                int userId = generatedKeys.getInt(1);

                // 插入到owner表
                try (PreparedStatement addOwner = conn.prepareStatement("INSERT INTO owner VALUES (?,?,null,null,null)")) {
                    addOwner.setString(1,name);
                    addOwner.setInt(2, userId);
//                    addOwner.setString(2, ownerInfo);
                    addOwner.executeUpdate();
                }

                // 插入到fyimg表
                try (PreparedStatement addFyimg = conn.prepareStatement("INSERT INTO fyimg VALUES (?,null,null)")) {
                    addFyimg.setInt(1, userId);
//                    addFyimg.setString(2, fyimgInfo);
                    addFyimg.executeUpdate();
                }
                //记得加一个photo的主键插入
                try(PreparedStatement addPhoto = conn.prepareStatement("INSERT INTO photo VALUES (?,null,null,null,null,null,null,null,null,null)")){
                    addPhoto.setInt(1,userId);
                    addPhoto.executeUpdate();
                }
            } else {
                throw new SQLException("Failed to retrieve the generated ID after inserting into user_login.");
            }

            // 事务提交
            conn.commit();
        } catch (SQLException e) {
            // 发生错误时，回滚事务
            conn.rollback();
            throw e;
        }
    }

    //把数据写进uselist里
    public ArrayList<Usedata> getAlluser() throws SQLException {
        ArrayList<Usedata> uselist = new ArrayList<Usedata>();
        PreparedStatement prep = conn.prepareStatement("select * from db1.user_login");
        prep.execute();
        ResultSet resultSet =prep.executeQuery();
        while(resultSet.next()){
            int myid = resultSet.getInt("id");
            String myname = resultSet.getString("name");
            String mypwd = resultSet.getString("pwd");
            uselist.add(new Usedata(myid,myname,mypwd));
        }
        return uselist;
    }
    //在表里查询数据
    public Usedata getUser(int id) throws SQLException {
        PreparedStatement prep = conn.prepareStatement("select * from db1.user_login where id=?");
        prep.setInt(1,id);
        prep.execute();
        ResultSet resultSet =prep.executeQuery();
        if(resultSet.next()){
            int myid = resultSet.getInt("id");
            String myname = resultSet.getString("name");
            String mypwd = resultSet.getString("pwd");
            return new Usedata(myid,myname,mypwd);
        }
        return null;
    }
    //验证数据是否存在
    public Usedata login(int id,String pwd) throws SQLException {
        PreparedStatement prep = conn.prepareStatement("select db1.user_login.pwd from db1.user_login where id=?");
        prep.setInt(1,id);
        prep.execute();
        ResultSet resultSet = prep.executeQuery();
        if(resultSet.next()){
            String mypwd = resultSet.getString("pwd");
            if(pwd.equals(mypwd)){
                return getUser(id);
            }
            else{
                return null;
            }
        }
        else{
            return null;
        }
    }
    //往owner表里写入数据
    public void UserInfo(String gender,String email,String success_data) throws SQLException {
        PreparedStatement prep = conn.prepareStatement("insert into owner values (null,null,?,?,?)");
        prep.setString(1,gender);
        prep.setString(2,email);
        prep.setString(3,success_data);
        prep.execute();
    }
    //把owner表里所有的数据查询出来，存到uselist里
    public ArrayList<Usedateimg> getAlluserimg() throws SQLException {
        ArrayList<Usedateimg> uselist = new ArrayList<Usedateimg>();
        PreparedStatement prep = conn.prepareStatement("select * from db1.owner");
        prep.execute();
        ResultSet resultSet =prep.executeQuery();
        while(resultSet.next()){
            String myname = resultSet.getString("user_name");
            int myid = resultSet.getInt("id");
            String mygender = resultSet.getString("gender");
            String myemail = resultSet.getString("email");
            String mytime = resultSet.getString("success_data");
            uselist.add(new Usedateimg(myname,myid,mygender,myemail,mytime));
        }
        return uselist;
    }

    //在数据库中按ID查询出传承人的个人信息，放到主页上
    public UserInfo getUserInfo(int id) throws SQLException {
        PreparedStatement prep = conn.prepareStatement("SELECT * FROM db1.owner WHERE id = ?");
        prep.setInt(1, id);
        ResultSet resultSet = prep.executeQuery();

        if (resultSet.next()) {
            UserInfo userInfo = new UserInfo();
            userInfo.setUser_name(resultSet.getString("user_name"));
            userInfo.setId(resultSet.getInt("id"));
            userInfo.setGender(resultSet.getString("gender"));
            userInfo.setEmail(resultSet.getString("email"));
            userInfo.setSuccessData(resultSet.getString("success_data"));

            // 因为期望只有一个结果，所以在获取完一个结果后就可以返回了
            return userInfo;
        } else {
            out.print("请检查ID");
            return null;
        }
    }

    //在数据库中修改“个人信息”页
    public UserInfo Updateown(String gender,String email,String success_data,int id) throws SQLException {
        UserInfo userInfo = new UserInfo();
        String sql2 = "update owner set gender=?,email=?,success_data=? where id=?";
        PreparedStatement pst = conn.prepareStatement(sql2);
        pst.setString(1,gender);
        pst.setString(2,email);
        pst.setString(3,success_data);
        pst.setInt(4,id);
        pst.executeUpdate();

        return userInfo;
    }

    //从数据库中按ID查询出传承人所传承的非遗信息界面
        public FyInfo getFyInfo(int id) throws SQLException {
        PreparedStatement prep = conn.prepareStatement("SELECT * FROM db1.fyimg WHERE id = ?");
        prep.setInt(1, id);
        ResultSet resultSet = prep.executeQuery();

        if (resultSet.next()) {
            FyInfo FyInfo = new FyInfo();
            FyInfo.setId(resultSet.getInt("id"));
            FyInfo.setFyName(resultSet.getString("fyName"));
            FyInfo.setFyImg(resultSet.getString("fyImg"));

            return FyInfo;
        } else {
            out.print("请检查ID");
            return null;
        }
    }
//更新非遗信息界面
    public FyInfo UpdateHeritage(int id,String fyname,String fyImg) throws SQLException {
        FyInfo userInfo = new FyInfo();
        String sql3 = "update fyimg set fyName=?,fyImg=? where id=?";
        PreparedStatement pst = conn.prepareStatement(sql3);
        pst.setString(1,fyname);
        pst.setString(2,fyImg);
        pst.setInt(3,id);
        pst.executeUpdate();

        return userInfo;
    }


    //在数据库中获取个人消息
    public ArrayList<infInfo> getinfInfo(int id) throws SQLException {//传入的是send_id
        PreparedStatement prep = conn.prepareStatement("SELECT * FROM db1.information WHERE receive_id = ?");
        prep.setInt(1, id);
        ResultSet resultSet = prep.executeQuery();
        ArrayList<infInfo> uselist = new ArrayList<infInfo>();
        while(resultSet.next()){
            int send_id = resultSet.getInt("send_id");
            String myImg = resultSet.getString("myimg");
            Timestamp send_time = resultSet.getTimestamp("send_time");
            uselist.add(new infInfo(send_id,send_time,myImg));
        }
        System.out.println("个人消息已经获取成功！");
        return uselist;
    }

    //向别人发送消息
    public infInfo InsertInformation(int my_id, String myimg, int receive_id) throws SQLException {
        infInfo uselist = new infInfo();
        try {
            // 获取当前时间戳
            Instant now = Instant.now();
            Timestamp currentTimestamp = Timestamp.from(now.atZone(ZoneId.systemDefault()).toInstant());

            String sql = "INSERT INTO information (myimg, send_id, send_time, receive_id) VALUES (?, ?, ?, ?)";
            PreparedStatement prep = conn.prepareStatement(sql);

            prep.setString(1, myimg);
            prep.setInt(2,my_id);
            // 设置当前时间戳作为send_time
            prep.setTimestamp(3, currentTimestamp);
            prep.setInt(4, receive_id);

            // 执行插入并获取受影响的行数
            int rowsInserted = prep.executeUpdate();

        } catch (SQLException e) {
            throw new RuntimeException("Failed to insert information into the database.", e);
        }

        return uselist;
    }

    //模糊查询
    public List<Map<String, Object>> getinfInfo(String keywords) throws SQLException {
        String sql = "SELECT * FROM fyimg WHERE fyName LIKE ? OR fyImg LIKE ?";
        PreparedStatement prep = conn.prepareStatement(sql);
        prep.setString(1, "%" + keywords + "%");
        prep.setString(2, "%" + keywords + "%");

        ResultSet resultSet = prep.executeQuery();
        List<Map<String, Object>> resultList = new ArrayList<>();

        while (resultSet.next()) {
            Map<String, Object> row = new HashMap<>();
            row.put("id", resultSet.getString("id"));
            row.put("fyName", resultSet.getString("fyName"));
            row.put("fyImg", resultSet.getString("fyImg")); // 假设fyImg字段存在于fyimg表中
            resultList.add(row);
        }

        System.out.println("个人消息已经获取成功！");

        // 返回合并后的结果列表
        return resultList;
    }

    //上传相册/视频，设定一次只能上传9张照片，第二次就是修改，要不直接写修改url地址，表格写个九宫格，然后对每个url地址进行覆写
    //url展示
    public ArrayList<tb_url> geturlInfo(int id) throws SQLException {//传入的是个人id
        PreparedStatement prep = conn.prepareStatement("SELECT * FROM db1.tb_url WHERE id = ?");
        prep.setInt(1, id);
        ResultSet resultSet = prep.executeQuery();
        ArrayList<tb_url> uselist = new ArrayList<tb_url>();
        while(resultSet.next()){
            String tb_url = resultSet.getString("tb_url");
            String name = resultSet.getString("name");
            uselist.add(new tb_url(tb_url,name));
        }
        System.out.println("个人消息已经获取成功！");
        return uselist;
    }

    //url修改
    public tb_url UpdataUrl(int id, String name, String tb_url) throws SQLException {
        tb_url uselist = new tb_url();
        try {
            // 获取当前时间戳
            String sql = "INSERT INTO tb_url (id, name, tb_url) VALUES (?, ?, ?)";
            PreparedStatement prep = conn.prepareStatement(sql);
            // 设置当前时间戳作为send_time
            prep.setInt(1,id);
            prep.setString(2,name);
            prep.setString(3,tb_url);

            // 执行插入并获取受影响的行数
            int rowsInserted = prep.executeUpdate();

        } catch (SQLException e) {
            throw new RuntimeException("Failed to insert tb_url into the database.", e);
        }

        return uselist;
    }
    //这里应该还有访问权限的问题
}
