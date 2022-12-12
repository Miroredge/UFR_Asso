package com.ufrAsso.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ufrAsso.entity.Budget;

/**
 * Budget repository.
 * 
 * @author Miroredge
 * @version 1.0
 */

public interface BudgetRepo extends JpaRepository<Budget, Long> {

}