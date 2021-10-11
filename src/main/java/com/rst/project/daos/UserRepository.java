package com.rst.project.daos;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.rst.project.entities.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    User findByUserName(String name);   
    
    @Modifying
    @Query("update User u set u.name = :name, u.password = :password, u.userName = :userName"
    		+  " where u.id = :id")
    void updateProfile(@Param(value = "name") String name, @Param(value = "password") String password, @Param(value = "userName") String userName,@Param(value = "id") long id);
}