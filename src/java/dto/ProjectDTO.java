package dto;

public class ProjectDTO {
    private int ProjectID;
    private String ProjectName;
    private String Address;
    private String Description;
    private String Status;
    private String Investor;
    private String imgPath;



    public ProjectDTO() {
    }

    public ProjectDTO(int ProjectID, String ProjectName) {
        this.ProjectID = ProjectID;
        this.ProjectName = ProjectName;
    }

    public ProjectDTO(String ProjectName, String Address, String Description, String Status, String Investor, String imgPath) {
        this.ProjectName = ProjectName;
        this.Address = Address;
        this.Description = Description;
        this.Status = Status;
        this.Investor = Investor;
        this.imgPath = imgPath;
    }
    
    public ProjectDTO(int ProjectID, String ProjectName, String Address, String Description, String Status, String Investor) {
        this.ProjectID = ProjectID;
        this.ProjectName = ProjectName;
        this.Address = Address;
        this.Description = Description;
        this.Status = Status;
        this.Investor = Investor;
    }

    public int getProjectID() {
        return ProjectID;
    }

    public void setProjectID(int ProjectID) {
        this.ProjectID = ProjectID;
    }

    public String getProjectName() {
        return ProjectName;
    }

    public void setProjectName(String ProjectName) {
        this.ProjectName = ProjectName;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String Description) {
        this.Description = Description;
    }

    public String getStatus() {
        return Status;
    }

    public void setStatus(String Status) {
        this.Status = Status;
    }

    public String getInvestor() {
        return Investor;
    }

    public void setInvestor(String Investor) {
        this.Investor = Investor;
    }
    
        public String getImgPath() {
        return imgPath;
    }

    public void setImgPath(String imgPath) {
        this.imgPath = imgPath;
    }
   
}
