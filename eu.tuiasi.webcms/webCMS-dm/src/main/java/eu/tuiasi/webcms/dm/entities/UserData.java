package eu.tuiasi.webcms.dm.entities;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity(name = "userData")
@Table(name = "T_USER_DATA", schema = "webcms")
public class UserData implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String avatar;
    @Temporal(TemporalType.TIMESTAMP)
    private Date createdAt;
    private Date dob;
    private String email;
    private String firstname;
    private String lastname;

    @OneToOne(cascade = {CascadeType.ALL},fetch=FetchType.EAGER)
    @PrimaryKeyJoinColumn
    private User user;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
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

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

}
