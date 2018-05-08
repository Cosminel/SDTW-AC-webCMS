package eu.tuiasi.webcms.web.controller;

import eu.tuiasi.utils.WebCmsConstants;
import eu.tuiasi.webcms.dm.enums.AppRoles;
import eu.tuiasi.webmcms.bl.dto.UserDataDTO;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.client.RestTemplate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet("usersServlet")
public class UserServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Entering in doPOST user");
        String firstname = req.getParameter("firstname");
        String lastname = req.getParameter("lastname");
        String email = req.getParameter("email");
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date dob = new Date();
        AppRoles role = AppRoles.valueOf(req.getParameter("roles"));
        try {
            dob = sdf.parse(req.getParameter("dob"));
        } catch (ParseException e) {
            e.printStackTrace();
        }

        UserDataDTO dto = new UserDataDTO(lastname,firstname, dob,email,role);

        final String uri = WebCmsConstants.HTTP_LOCALHOST_8180 + req.getContextPath() + WebCmsConstants.UserRestOperations.add;

        RestTemplate restTemplate = new RestTemplate();
        HttpEntity<UserDataDTO> requestBody = new HttpEntity<>(dto);
        ResponseEntity<UserDataDTO> result = restTemplate.postForEntity(uri, requestBody, UserDataDTO.class);

        System.out.println("Status code:" + result.getStatusCode());

        // Code = 200.
        if (result.getStatusCode() == HttpStatus.CREATED) {
            UserDataDTO e = result.getBody();
            System.out.println("(Client Side) Employee Created: "+ e.getFirstName());
        }

    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPut(req, resp);
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doDelete(req, resp);
    }
}
