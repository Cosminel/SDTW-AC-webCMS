package eu.tuiasi.transformer;

import eu.tuiasi.webcms.dm.entities.User;
import eu.tuiasi.webcms.dm.entities.UserData;
import eu.tuiasi.webcms.dm.entities.UserRole;
import eu.tuiasi.webcms.dm.enums.AppRoles;
import eu.tuiasi.webmcms.bl.dto.UserDataDTO;

import java.util.Date;

public class UserDataDTOToEntity {
   public static UserData transform(UserDataDTO dto){
        UserData u = new UserData();
        User user =new User(dto.getFirstName() + "." + dto.getLastName(),"password");
        user.setUserRole(new UserRole(dto.getUserRole().getText(),user.getUsername()));
        u.setUser(user);
        u.setDob(dto.getDob());
        u.setEmail(dto.getEmail());
        u.setLastname(dto.getLastName());
        u.setFirstname(dto.getFirstName());
        u.setCreatedAt(new Date());
        return u;
    }
}
