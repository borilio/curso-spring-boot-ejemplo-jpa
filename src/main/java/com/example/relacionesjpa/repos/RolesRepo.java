package com.example.relacionesjpa.repos;

import com.example.relacionesjpa.models.Rol;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RestController;

@Repository
@RepositoryRestResource(path = "roles")
public interface RolesRepo extends JpaRepository<Rol, Integer> {
}
