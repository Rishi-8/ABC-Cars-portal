package com.rst.project.services;

import java.util.Arrays;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rst.project.daos.RoleRepository;
import com.rst.project.daos.UserRepository;
import com.rst.project.entities.Car;
import com.rst.project.entities.Role;
import com.rst.project.entities.User;

import java.util.HashSet;

@Service
@Transactional
public class UserService {
	@Autowired
	UserRepository repo;

	@Autowired
    private RoleRepository roleRepository;
	
	public void save(User user) {		
		System.out.println("----------------------------------"+roleRepository.findAll());
		 // user.setRoles(new HashSet<>(Arrays.asList(new Role("Users"))));
		 // user.setRoles(new HashSet<>(roleRepository.findAll()));
		 user.setRoles(new HashSet<>(roleRepository.findBySpecificRoles("Users")));
        repo.save(user);	
	}

	public List<User> listAll() {
		return (List<User>) repo.findAll();
	}

	public User get(Long id) {
		return repo.findById(id).get();
	}

	public void delete(Long id) {
		repo.deleteById(id);
	}
	
	public void updateProfile(String name, String userName, String password, long id) {
		repo.updateProfile(name, password, userName,id);
		System.out.println(name+password+userName+id);
	}

/* Doesn't work as expected
	public void updateUser(User user) {
		repo.save(user);
	}
*/
	
}