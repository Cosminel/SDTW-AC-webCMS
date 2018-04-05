package eu.tuiasi.webmcms.bl.dto;

import javax.xml.bind.annotation.XmlRootElement;
import java.io.Serializable;
import java.util.Date;
@XmlRootElement
public class UserDataDTO implements Serializable {

    private String lastName;
    private String firstName;
    private Date dob;
    private String email;

    public UserDataDTO() {
    }

    public UserDataDTO(String lastName, String firstName, Date dob, String email) {
        this.lastName = lastName;
        this.firstName = firstName;
        this.dob = dob;
        this.email = email;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "UserDataDTO{" +
                "lastName='" + lastName + '\'' +
                ", firstName='" + firstName + '\'' +
                ", dob=" + dob +
                ", email='" + email + '\'' +
                '}';
    }
}
