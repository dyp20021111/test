package org.example.pojo;

public class School {
    private int id;
    private String schoolName;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSchoolName() {
        return schoolName;
    }

    public void setSchoolName(String schoolName) {
        this.schoolName = schoolName;
    }

    public School(int id, String schoolName) {
        this.id = id;
        this.schoolName = schoolName;
    }

    public School() {
    }

    @Override
    public String toString() {
        return "School{" +
                "id=" + id +
                ", schoolName='" + schoolName + '\'' +
                '}';
    }
}
