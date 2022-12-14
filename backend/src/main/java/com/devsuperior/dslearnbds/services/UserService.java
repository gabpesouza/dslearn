package com.devsuperior.dslearnbds.services;

import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.devsuperior.dslearnbds.dto.UserDTO;
import com.devsuperior.dslearnbds.entities.User;
import com.devsuperior.dslearnbds.repositories.UserRepository;
import com.devsuperior.dslearnbds.services.exceptions.ResourceNotFoundException;

@Service
public class UserService implements UserDetailsService {
	
	@Autowired
	private static Logger logger = LoggerFactory.getLogger(UserService.class);
	
	@Autowired
	private UserRepository userRepository;

	@Transactional(readOnly = true)
	public UserDTO findById(Long id) {

		Optional<User> obj = userRepository.findById(id);
		User entity = obj.orElseThrow(() -> new ResourceNotFoundException("Resource not found"));
		return new UserDTO(entity);
		
	}
	
	
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		
		User user = userRepository.findByEmail(username);
		if(user == null) {
			logger.error("Username not found " + username);
			throw new UsernameNotFoundException("Username not found");
			
		}
		logger.info("User found: " + username);
		return user;
	}

	
	
	
}
