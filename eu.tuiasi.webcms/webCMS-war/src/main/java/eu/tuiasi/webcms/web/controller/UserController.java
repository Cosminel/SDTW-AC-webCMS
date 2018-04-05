package eu.tuiasi.webcms.web.controller;

import eu.tuiasi.webmcms.bl.dto.UserDataDTO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/user-manangement/users")
public class UserController {

    @RequestMapping(value = "/add",method = RequestMethod.POST)
    public String addUser(UserDataDTO userDataDTO){
        return "salut";
    }

}
