package user;

import java.sql.*;

public class infInfo {
    private String myimg;
    private int send_id;//发件人id
//    private String send_time;
    private java.sql.Timestamp send_time;
    private String receive_id;//收件人id

    public infInfo() {
    }

    public infInfo(String myimg, int send_id, java.sql.Timestamp send_time, String receive_id) {
//        this.id = id;
        this.myimg = myimg;
        this.send_id = send_id;
        this.send_time = send_time;
        this.receive_id = receive_id;
    }

    public infInfo(int sendId, java.sql.Timestamp sendTime, String myImg) {
        this.send_id = sendId;
        this.send_time = sendTime;
        this.myimg = myImg;
    }

    public String getMyimg() {
        return myimg;
    }

    public void setMyimg(String myimg) {
        this.myimg = myimg;
    }

    public int getSend_id() {
        return send_id;
    }

    public void setSend_id(int send_id) {
        this.send_id = send_id;
    }

    public java.sql.Timestamp getSend_time() {
        return send_time;
    }

    public void setSend_time(Timestamp send_time) {
        this.send_time = send_time;
    }

    public String getReceive_id() {
        return receive_id;
    }

    public void setReceive_id(String receive_id) {
        this.receive_id = receive_id;
    }
}
