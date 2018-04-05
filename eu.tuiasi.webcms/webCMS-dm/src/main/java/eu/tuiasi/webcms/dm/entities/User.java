package eu.tuiasi.webcms.dm.entities;

import java.io.Serializable;

import javax.persistence.*;

@Entity(name="user")
@Table(name="T_USERS",schema="webcms")
public class User implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(generator = "USER_SEQ", strategy = GenerationType.SEQUENCE)
	@SequenceGenerator(name="USER_SEQ", sequenceName = "TUKB109.USER_SEQ", allocationSize = 1)
	private Long userId;
	
	private String username; 
	
	private String password;
	@OneToOne
	private UserRole userRole;

	@OneToOne(mappedBy="user", cascade=CascadeType.ALL)
	private UserData userData;

	public User(){

	}

	public User(String username, String password) {
		this.username = username;
		this.password = password;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
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
