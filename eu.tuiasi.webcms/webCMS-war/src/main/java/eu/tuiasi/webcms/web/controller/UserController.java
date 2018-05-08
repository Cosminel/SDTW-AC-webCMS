package eu.tuiasi.webcms.web.controller;

import eu.tuiasi.restclient.UserDatabaseRestClient;
import eu.tuiasi.transformer.UserDataDTOToEntity;
import eu.tuiasi.webcms.dm.entities.UserData;
import eu.tuiasi.webmcms.bl.dto.UserDataDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/user-management")
public class UserController {

    @Autowired
    public UserDatabaseRestClient userDatabaseRestClient;

    UserDataDTO dto = new UserDataDTO();
    @RequestMapping(value = "/add",method = RequestMethod.POST, consumes = "application/json")
    @ResponseBody
    public ResponseEntity<UserData> addUser(@RequestBody  UserDataDTO userDataDTO){
        System.out.println("UserController.addUser");
        ResponseEntity re =  userDatabaseRestClient.create(UserDataDTOToEntity.transform(userDataDTO));
        return re;
    }

}
