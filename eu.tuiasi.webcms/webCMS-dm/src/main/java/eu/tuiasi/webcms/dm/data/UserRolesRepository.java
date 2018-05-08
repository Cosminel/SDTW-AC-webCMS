package eu.tuiasi.webcms.dm.data;

import eu.tuiasi.webcms.dm.entities.UserRole;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource
public interface UserRolesRepository extends CrudRepository<UserRole, Long> {

}
