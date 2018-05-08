package eu.tuiasi.webcms.dm.entities;

import org.springframework.data.rest.core.annotation.RestResource;

import javax.persistence.*;
import java.io.Serializable;

@Entity(name="user")
@Table(name="T_USERS",schema="webcms")

public class User implements Serializable {
    /**
     *
     */
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(generator = "USER_SEQ", strategy = GenerationType.SEQUENCE)
    @SequenceGenerator(name = "USER_SEQ", sequenceName = "USER_SEQ", allocationSize = 1)
    private Long id;

    @Column(name = "username")
    private String username;

    @Column(name = "password")
    private String password;
    @OneToOne
    @RestResource(path = "userRole", rel = "userRoles")
    private UserRole userRole;

    @OneToOne(optional = false,mappedBy = "user")
    private UserData userData;

    public User() {

    }

    public User(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long userId) {
        this.id = userId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public UserRole getUserRole() {
        return userRole;
    }

    public void setUserRole(UserRole userRole) {
        this.userRole = userRole;
    }

    public UserData getUserData() {
        return userData;
    }

    public void setUserData(UserData userData) {
        this.userData = userData;
    }

}
