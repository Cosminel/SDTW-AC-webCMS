package eu.tuiasi.webcms.dm.entities;

import eu.tuiasi.webcms.dm.enums.AppRoles;

import javax.persistence.*;

@Entity(name="userRole")
@Table(name="T_USERROLES", schema = "webcms")
public class UserRole {

    private static final long serialVersionUID = 1L;
    @Enumerated(EnumType.STRING)
    private AppRoles userRole;

    @Column(name="username")
    private String username;

    @Id
    @GeneratedValue
    @Column(name="ROLE_ID")
    private Long id;

    @OneToOne(mappedBy="userRole",cascade=CascadeType.ALL,orphanRemoval=true)
    private User userR;

    public UserRole() {
    }

    public UserRole(AppRoles userRole){
        this.userRole=userRole;
    }

    public UserRole(String username,AppRoles userRole){
        this.userRole=userRole;
        this.username=username;
    }

    public AppRoles getUserRole() {
        return userRole;
    }
    public void setUserRole(AppRoles userRole) {
        this.userRole = userRole;
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
