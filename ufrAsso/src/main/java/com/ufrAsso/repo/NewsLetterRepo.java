package com.ufrAsso.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ufrAsso.entity.NewsLetter;

/**
 * NewsLetter repository.
 * 
 * @author Miroredge
 * @version 1.0
 */

public interface NewsLetterRepo extends JpaRepository<NewsLetter, Long> {

}