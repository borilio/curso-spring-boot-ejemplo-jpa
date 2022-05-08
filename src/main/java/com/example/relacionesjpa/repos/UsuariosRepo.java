package com.example.relacionesjpa.repos;

import com.example.relacionesjpa.models.Usuario;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.stereotype.Repository;

@Repository
@RepositoryRestResource(path = "usuarios")
public interface UsuariosRepo extends JpaRepository<Usuario, Integer> {
    /**
     * Busca un Usuario que tenga como correo y clave los recibidos por parámetros.
     * @param correo String con el correo
     * @param clave String con la clave
     * @return Un objeto {@link Usuario} que tenga esa clave y ese correo, o null si no se encuentra
     */
    public Usuario findByCorreoAndClave(String correo, String clave);

    public boolean existsByCorreo(String correo);
}
