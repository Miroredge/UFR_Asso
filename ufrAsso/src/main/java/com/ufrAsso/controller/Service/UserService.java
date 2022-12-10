package com.ufrAsso.controller.Service;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ufrAsso.entity.User;
import com.ufrAsso.repo.UserRepo;

@Repository
@Transactional
class UserService implements UserRepo {

  @PersistenceContext
  private EntityManager em;

  @Autowired
  private UserRepo repository;

  public User findByPseudo(String pseudo) {
    TypedQuery query = em.createQuery("SELECT U FROM Usr U WHERE U.PSD = :pseudo", User.class)
        .setParameter("pseudo", pseudo);

    return (User) query.getSingleResult();

  UserService() {
    super();
  }
}
