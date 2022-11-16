package com.ufrAsso.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ufrAsso.entity.Role;

public interface RoleRepo extends JpaRepository<Role, Long> {

}
