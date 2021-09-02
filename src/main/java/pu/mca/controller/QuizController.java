package pu.mca.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import pu.mca.models.Question;
import pu.mca.models.User;
import pu.mca.service.UserService;

@RestController
@CrossOrigin
public class QuizController {
	
	@Autowired
	UserService userService;
	
	@GetMapping("/questions")
	public List<Question> getQuestions() {
		
		return userService.getQuestion();	
	}
	@GetMapping("/users")
	public List<User> getUsers() {
		
		return userService.getUsers();	
	}
	
	@GetMapping("/users/{id}")
	public User getStudent(@PathVariable("id") Long id) {
		
		return userService.getUserById(id);	
	}
	
	@PostMapping("/login")
	public User login(@RequestBody User user ) {
		
		return userService.login(user);
	}
	
	@PostMapping("/signup")
	public User signup(@RequestBody User user ) {
		
		return userService.signup(user);
	}

}
