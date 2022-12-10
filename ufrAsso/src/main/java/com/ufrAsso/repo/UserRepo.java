package com.ufrAsso.repo;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ufrAsso.entity.User;

/**
 * User repository.
 * 
 * @author Miroredge
 * @version 1.0
 */

public interface UserRepo extends JpaRepository<User, Long> {
    // find a user by his pseudo
    Optional<User> findByPseudo(String pseudo);

    // find a user by his email
    Optional<User> findByEmail(String email);

    // find a user by his student number
    Optional<User> findByStudentNumber(String studentNumber);
}
