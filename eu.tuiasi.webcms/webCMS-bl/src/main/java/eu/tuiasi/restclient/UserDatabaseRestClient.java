package eu.tuiasi.restclient;

import eu.tuiasi.utils.WebCmsConstants;
import eu.tuiasi.webcms.dm.data.UserDataRepository;
import eu.tuiasi.webcms.dm.entities.User;
import eu.tuiasi.webcms.dm.entities.UserData;
import eu.tuiasi.webcms.dm.entities.UserRole;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.ResponseEntity;
import org.springframework.lang.UsesSunHttpServer;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

import java.util.Optional;

@Component
public class UserDatabaseRestClient {

    @Autowired
    UserDataRepository userDataRepository;


    public ResponseEntity create(UserData usr){

        String uriUserData = WebCmsConstants.HTTP_LOCALHOST_8180 + WebCmsConstants.CONTEXT_NAME + WebCmsConstants.SpringDataRest.userDatas;
        String uriUserCredentials = WebCmsConstants.HTTP_LOCALHOST_8180 + WebCmsConstants.CONTEXT_NAME + WebCmsConstants.SpringDataRest.users;
        String uriUserRole =  WebCmsConstants.HTTP_LOCALHOST_8180 + WebCmsConstants.CONTEXT_NAME + WebCmsConstants.SpringDataRest.usersRoles;

        RestTemplate restTemplate = new RestTemplate();
        HttpEntity<UserData> requestBodyUserData = new HttpEntity<>(usr);
        ResponseEntity<UserData> resultUserData = restTemplate.postForEntity(uriUserData, requestBodyUserData, UserData.class);

        User newUser = usr.getUser();

        HttpEntity<User> requestBodyUser = new HttpEntity<>(newUser);
        ResponseEntity<User> resultUser = restTemplate.postForEntity(uriUserCredentials, requestBodyUser, User.class);

        HttpEntity<UserRole> requestBodyUserRole = new HttpEntity<>(usr.getUser().getUserRole());
        ResponseEntity<User> resultUserRole = restTemplate.postForEntity(uriUserRole, requestBodyUserRole, User.class);

        return resultUserData;
    }
}
