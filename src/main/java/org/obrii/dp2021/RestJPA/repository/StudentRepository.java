package org.obrii.dp2021.RestJPA.repository;

import java.util.List;
import org.obrii.dp2021.RestJPA.entity.Student;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(collectionResourceRel="student", path="student")
public interface StudentRepository extends PagingAndSortingRepository<Student,Long>{
    List<Student> findByName(@Param("name") String name);
}
