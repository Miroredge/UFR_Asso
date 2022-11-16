package com.ufrAsso.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ufrAsso.entity.Message;

public interface MessageRepo extends JpaRepository<Message, Long> {

}