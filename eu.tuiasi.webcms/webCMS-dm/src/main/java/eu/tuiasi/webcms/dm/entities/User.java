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
	
	
	
	
}
