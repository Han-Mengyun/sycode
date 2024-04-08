package user;

public class UserInfo {
        private String user_name;
        private int id;
        private String gender;
        private String email;
        private String successData;
    public UserInfo() {}

    // 构造方法和 Setter 方法
    public UserInfo(String user_name, int id, String gender, String email, String successData) {
        this.user_name = user_name;
        this.id = id;
        this.gender = gender;
        this.email = email;
        this.successData = successData;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSuccessData() {
        return successData;
    }

    public void setSuccessData(String successData) {
        this.successData = successData;
    }
}
