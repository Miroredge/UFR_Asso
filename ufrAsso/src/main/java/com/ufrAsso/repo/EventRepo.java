package com.ufrAsso.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ufrAsso.entity.Event;

public interface EventRepo extends JpaRepository<Event, Long> {

}
