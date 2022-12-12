package com.ufrAsso.repo;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.ufrAsso.entity.Event;

/**
 * Event repository.
 * 
 * @author Miroredge
 * @version 1.0
 */

public interface EventRepo extends JpaRepository<Event, Long> {
    @Query(value = "SELECT generateId_Event() FROM dual", nativeQuery = true)
    Optional<Long> getNextEventId();

}
