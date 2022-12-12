package com.ufrAsso.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ufrAsso.entity.UserHasEvent;

public interface UserHasEventRepo extends JpaRepository<UserHasEvent, Long> {

}
