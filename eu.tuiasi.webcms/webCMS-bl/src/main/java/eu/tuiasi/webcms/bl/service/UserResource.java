package eu.tuiasi.webcms.bl.service;

import eu.tuiasi.webmcms.bl.dto.UserDataDTO;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import java.net.URI;

@RestController
@RequestMapping("/user-manangement/users")
public class UserResource {

    @RequestMapping(value="/",method = RequestMethod.POST)
    public ResponseEntity<?> createUser(@RequestBody UserDataDTO userDataDTO){
        System.out.println("Endpoint:" + userDataDTO);

        return ResponseEntity.created(URI.create("mata")).build();
    }



}
