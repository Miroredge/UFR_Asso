package com.ufrAsso.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ufrAsso.entity.User;

public interface UserRepo extends JpaRepository<User, Long> {

}
