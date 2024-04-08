//import db.Database;
//import demo1.Usedata;
//
//import java.sql.SQLException;
//import java.util.ArrayList;
//
//public class test {
//    public static void main(String[] args) throws SQLException, ClassNotFoundException {
//        Database database = new Database();
//        database.showConnection();
//        System.out.println("1");
//
////        database.insert("admin","123456");
//
////        ArrayList<Usedata> usedata = database.getAlluser();
//        System.out.println("2");
////        System.out.println("总表里面共有"+usedata.size()+"行数据");
////        System.out.println("3");
////        for(Usedata each:usedata){
////            System.out.println(each.getId()+"..."+each.getName()+"..."+each.getPassward());
////        }
//        System.out.println("4");
////
//        Usedata usedata = database.getUser(3);
//        System.out.println("5");
//        System.out.println(usedata.getId()+usedata.getName());
//        System.out.println("0");
//
////        Usedata usedata = database.login(3,"123456");
////        System.out.println(usedata);
////        if(usedata==null){
////            System.out.println("该用户不存在或密码错误");
////        }
////        else{
////            System.out.println("欢迎登陆！"+usedata.getName());
////        }
//        database.close();
//    }
//}
