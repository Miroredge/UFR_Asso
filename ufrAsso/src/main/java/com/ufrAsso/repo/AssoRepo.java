package com.ufrAsso.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ufrAsso.entity.Asso;

public interface AssoRepo extends JpaRepository<Asso, Long> {

}