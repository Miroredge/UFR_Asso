package com.ufrAsso.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ufrAsso.entity.Event;

/**
 * Event repository.
 * 
 * @author Miroredge
 * @version 1.0
 */

public interface EventRepo extends JpaRepository<Event, Long> {

}
