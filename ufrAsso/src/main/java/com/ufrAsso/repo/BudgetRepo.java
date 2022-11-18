package com.ufrAsso.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ufrAsso.entity.Budget;

public interface BudgetRepo extends JpaRepository<Budget, Long> {

}