package pu.mca.service;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pu.mca.dao.repository.QuestionRepository;
import pu.mca.dao.repository.UserRepository;
import pu.mca.models.Question;
import pu.mca.models.User;

@Service
public class UserService {
	
	@Autowired
	UserRepository repository;
	
	@Autowired
	QuestionRepository questionRepository;

	public User getUserById(Long id) {
		
		return repository.getById(id);
	}

	public User login(User user) {
		return repository.getByEmailAndPassword(user.getEmail(), user.getPassword())
				.orElseThrow(() -> new RuntimeException("Invalid user"));
		
	}

	public User signup(User user) {
		repository.saveAndFlush(user);
		return user;
	}


	public List<User> getUsers() {
		return repository.findAll();
	}

	public List<Question> getQuestion() {
		Long count = questionRepository.count();
		Set<Long> requestList = new HashSet<>(5);
		do {
			Long random = (long) (Math.random() * (count -1));
			requestList.add(random+1);
		}while(requestList.size() !=5);
		return questionRepository.findByIdIn(requestList);
	}
	
}
