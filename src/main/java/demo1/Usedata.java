package demo1;

public class Usedata {
    private Integer id;
    private String Name;
    private String passward;
//    private

    public Usedata(Integer id,String name,String passward){
        this.id=id;
        Name = name;
        this.passward=passward;
    }

    public Usedata(String name,String passward){
        Name = name;
        this.passward = passward;
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

    public String getPassward() {
        return passward;
    }

    public void setPassward(String passward) {
        this.passward = passward;
    }

}
