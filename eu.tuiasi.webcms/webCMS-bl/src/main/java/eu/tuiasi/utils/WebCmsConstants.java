package eu.tuiasi.utils;

public interface WebCmsConstants {
    String HTTP_LOCALHOST_8180 = "http://localhost:8180";
    String CONTEXT_NAME ="/webCMS";

    interface UserRestOperations{
        String add = "/services/user-management/add";
    }

    interface SpringDataRest{
        String userDatas = "/api/userDatas";
        String users = "/api/users";
        String usersRoles = "/api/userRoles";
        String usersId = "/api/users/{id}";
    }
}
