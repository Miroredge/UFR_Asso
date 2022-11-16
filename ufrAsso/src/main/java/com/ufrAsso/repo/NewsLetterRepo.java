package com.ufrAsso.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ufrAsso.entity.NewsLetter;

public interface NewsLetterRepo extends JpaRepository<NewsLetter, Long> {

}