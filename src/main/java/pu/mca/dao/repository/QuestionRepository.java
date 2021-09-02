package pu.mca.dao.repository;

import java.util.List;
import java.util.Set;

import org.springframework.data.jpa.repository.JpaRepository;

import pu.mca.models.Question;

public interface QuestionRepository extends JpaRepository<Question, Long>{
	
	List<Question> findByIdIn(Set<Long> ids);
	
	

}
