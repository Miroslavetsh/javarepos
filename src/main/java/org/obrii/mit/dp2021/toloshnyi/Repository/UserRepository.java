package org.obrii.mit.dp2021.toloshnyi.Repository;

import org.obrii.mit.dp2021.toloshnyi.Domain.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends CrudRepository<User , Long>{    
}
