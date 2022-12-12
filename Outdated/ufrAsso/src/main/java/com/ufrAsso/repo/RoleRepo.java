package com.ufrAsso.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ufrAsso.entity.Role;

/**
 * Role repository.
 * 
 * @author Miroredge
 * @version 1.0
 */

public interface RoleRepo extends JpaRepository<Role, Long> {

}
