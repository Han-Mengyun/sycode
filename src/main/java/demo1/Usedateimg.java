package demo1;

public class Usedateimg {
    private Integer id;
    private String Name;
    private String gender;
    private String email;
    private String success_time;

    public Usedateimg(String name,int id,String gender,String email,String success_time){
        Name=name;
        this.id=id;
        this.gender=gender;
        this.email=email;
        this.success_time=success_time;
    }
    public Usedateimg(int id){
        this.id=id;
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

    public String getSuccess_time() {
        return success_time;
    }

    public void setSuccess_time(String success_time) {
        this.success_time = success_time;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return Name;
    }

    public void setName(String name) {
        Name = name;
    }
}
