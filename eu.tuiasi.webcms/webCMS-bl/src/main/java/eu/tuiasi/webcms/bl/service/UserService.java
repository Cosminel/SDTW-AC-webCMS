package eu.tuiasi.webcms.bl.service;

import eu.tuiasi.webcms.dm.data.UserDataRepository;
import eu.tuiasi.webcms.dm.entities.UserData;
import org.springframework.beans.factory.annotation.Autowired;

public class UserService {

    @Autowired
    UserDataRepository userDataRepository;

    public void create(UserData usr){
        userDataRepository.save(usr);

    }
}
