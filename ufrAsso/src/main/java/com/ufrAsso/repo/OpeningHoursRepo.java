package com.ufrAsso.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ufrAsso.entity.OpeningHours;

public interface OpeningHoursRepo extends JpaRepository<OpeningHours, Long> {

}
