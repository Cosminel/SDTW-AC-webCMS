package eu.tuiasi.webmcms.bl.dto;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import eu.tuiasi.webcms.dm.enums.AppRoles;
import eu.tuiasi.webcms.dm.serializers.LaunchDateSerializer;

import java.io.Serializable;
import java.util.Date;

@JsonIgnoreProperties(ignoreUnknown = true)
public class UserDataDTO implements Serializable {

    @JsonProperty
    private String lastName;
    @JsonProperty
    private String firstName;
    @JsonProperty
    private Date dob;
    @JsonProperty
    private String email;
    @JsonProperty
    private AppRoles userRole;


    public UserDataDTO() {
    }

    public UserDataDTO(String lastName, String firstName, Date dob, String email) {
        this.lastName = lastName;
        this.firstName = firstName;
        this.dob = dob;
        this.email = email;
    }

    public UserDataDTO(String lastName, String firstName, Date dob, String email, AppRoles userRole) {
        this.lastName = lastName;
        this.firstName = firstName;
        this.dob = dob;
        this.email = email;
        this.userRole = userRole;
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

    @JsonSerialize(using = LaunchDateSerializer.class)
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

    public AppRoles getUserRole() {
        return userRole;
    }

    public void setUserRole(AppRoles userRole) {
        this.userRole = userRole;
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
