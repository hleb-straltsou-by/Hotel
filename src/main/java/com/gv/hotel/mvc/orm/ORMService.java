package com.gv.hotel.mvc.orm;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.gv.hotel.mvc.bean.User;

@Repository
@Transactional
/**
 * Service for communicating with database using JPA specification and Hibernate framework
 */
public class ORMService {

    @PersistenceContext
    private EntityManager entityManager;

    /**
     * returns all users from database
     */
    public List<User> queryFindAllUsersJPA() {
        System.out.println("ORMService queryfindAllUsersJPA is called");
        String query = "from User order by iduser";
        TypedQuery<User> typedQuery = entityManager.createQuery(query, User.class);
        return typedQuery.getResultList();
    }

    /**
     * returns user from database according id
     */
    public User queryFindUserById (int id) {
        System.out.println("ORMService queryFindUserById is called");
        return entityManager.find(User.class, id);
    }
}
