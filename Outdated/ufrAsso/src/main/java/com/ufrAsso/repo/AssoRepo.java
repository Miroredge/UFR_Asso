package com.ufrAsso.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ufrAsso.entity.Asso;

/**
 * Asso repository.
 * 
 * @author Miroredge
 * @version 1.0
 */

public interface AssoRepo extends JpaRepository<Asso, Long> {

}