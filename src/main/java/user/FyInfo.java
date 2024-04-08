package user;

public class FyInfo {
    private int id;
    private String fyName;
    private String fyImg;

    public FyInfo() {
    }

    public FyInfo(int id, String fyName, String fyImg) {
        this.id = id;
        this.fyName = fyName;
        this.fyImg = fyImg;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFyName() {
        return fyName;
    }

    public void setFyName(String fyName) {
        this.fyName = fyName;
    }

    public String getFyImg() {
        return fyImg;
    }

    public void setFyImg(String fyImg) {
        this.fyImg = fyImg;
    }
}
