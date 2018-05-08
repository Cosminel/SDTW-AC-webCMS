package eu.tuiasi.webcms.dm.entities;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import eu.tuiasi.webcms.dm.enums.AppRoles;

import javax.persistence.*;

@Entity(name="userRole")
@Table(name="T_USERROLES", schema = "webcms")
public class UserRole {

    private static final long serialVersionUID = 1L;
    public UserRole() {
    }
    public UserRole(String userRole,String username) {
        this.user_Role = userRole;
        this.username = username;
    }

    @Id
    @GeneratedValue(generator = "USER_ROLES_SEQ", strategy = GenerationType.SEQUENCE)
    @SequenceGenerator(name="USER_ROLES_SEQ", sequenceName = "USER_ROLES_SEQ", allocationSize = 1)
    @Column(name="id")
    private Long id;

    @Column(name="USERROLE")
    private String user_Role;

    @Column(name="USERNAME")
    private String username;

    @OneToOne(mappedBy="userRole",cascade=CascadeType.ALL,orphanRemoval=true)
    private User userR;

    public String getUser_Role() {
        return user_Role;
    }

    public void setUser_Role(String user_Role) {
        this.user_Role = user_Role;
    }

    public User getUserR() {
        return userR;
    }

    public void setUserR(User userR) {
        this.userR = userR;
    }

    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }
}
