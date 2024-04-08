package demo1;

import java.net.FileNameMap;

public class FeiyiDB {
    private Integer id;
    private String Fname;
    private String Fintroduce;
    public FeiyiDB(int id,String Fname,String Fintroduce){
        this.id = id;
        this.Fname = Fname;
        this.Fintroduce=Fintroduce;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFname() {
        return Fname;
    }

    public void setFname(String fname) {
        Fname = fname;
    }

    public String getFintroduce() {
        return Fintroduce;
    }

    public void setFintroduce(String fintroduce) {
        Fintroduce = fintroduce;
    }
}
