package user;

public class tb_url {
    private int id;
    private String url;
    private String name;

    public tb_url() {
    }

    public tb_url(int id, String url, String name) {
        this.id = id;
        this.url = url;
        this.name = name;
    }

    public tb_url(String url, String name) {
        this.url = url;
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
