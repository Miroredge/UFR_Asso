package com.ufrAsso.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ufrAsso.entity.UserHasAssoAndRole;

public interface UserHasAssoAndRoleRepo extends JpaRepository<UserHasAssoAndRole, Long> {

}
