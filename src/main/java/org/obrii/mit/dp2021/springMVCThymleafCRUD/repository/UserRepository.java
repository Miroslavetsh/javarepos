package org.obrii.mit.dp2021.springMVCThymleafCRUD.repository;

import org.obrii.mit.dp2021.springMVCThymleafCRUD.Domain.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository

public interface UserRepository extends CrudRepository<User, Long> {
    
}
