package demo.model;

import org.springframework.boot.autoconfigure.SpringBootApplication;


import javax.persistence.*;

@SpringBootApplication
@Entity
public class Institution {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "institution_id")
    private int id;
    @Column(name = "name")
    private String name;
    @Column(name="address")
    private String address;
    @Column(name = "phone_number")
    private String phoneNumber;
    @Column(name="website")
    private String website;
    @Column(name = "monday")
    private String monday;
    @Column(name = "tuesday")
    private String tuesday;
    @Column(name = "wednesday")
    private String wednesday;
    @Column(name = "thursday")
    private String thursday;
    @Column(name = "friday")
    private String friday;
    @Column(name = "saturday")
    private String saturday;
    @Column(name = "sunday")
    private String sunday;

    public void setId(int id) {
        this.id = id;
    }
    
    public String getName() {
        return name;
    }

    public Object getPhoneNumber() {
        return phoneNumber;
    }

    public String getAddress() {
        return address;
    }

    public String getWebsite() {
        return website;
    }

    public String getMonday() {
        return monday;
    }

    public String getTuesday() {
        return tuesday;
    }

    public String getWednesday() {
        return wednesday;
    }

    public String getThursday() {
        return thursday;
    }

    public String getFriday() {
        return friday;
    }

    public String getSaturday() {
        return saturday;
    }

    public String getSunday() {
        return sunday;
    }
}
