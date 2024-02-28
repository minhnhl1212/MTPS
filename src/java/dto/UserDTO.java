package dto;

public class UserDTO {
    private int userId;
    private String userName;
    private String password;
    private String fullName;
    private String phone;
    private String address;
    private int roleId;

    public UserDTO() {
    }

    public UserDTO(String userName, String password, int roleId) {
        this.userName = userName;
        this.password = password;
        this.roleId = roleId;
    }
    
    

    public UserDTO(String userName, String password, String fullName, String phone, String address, int roleId) {
        this.userName = userName;
        this.password = password;
        this.fullName = fullName;
        this.phone = phone;
        this.address = address;
        this.roleId = roleId;
    }

    public UserDTO(int userId, String userName, String password, String fullName, String phone, String address, int roleId) {
        this.userId = userId;
        this.userName = userName;
        this.password = password;
        this.fullName = fullName;
        this.phone = phone;
        this.address = address;
        this.roleId = roleId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getRoleId() {
        return roleId;
    }

    public void setRoleId(int roleId) {
        this.roleId = roleId;
    }
    
    
}

