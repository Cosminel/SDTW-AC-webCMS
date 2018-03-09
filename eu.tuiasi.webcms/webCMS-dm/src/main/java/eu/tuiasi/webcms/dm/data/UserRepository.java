package eu.tuiasi.webcms.dm.data;


import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.data.rest.core.annotation.RestResource;

import eu.tuiasi.webcms.dm.entities.User;
@RepositoryRestResource
public interface UserRepository extends CrudRepository<User, Long> {
		@RestResource(path="byName")
		public List<User> findByUsername(@Param("username") String username);
}
