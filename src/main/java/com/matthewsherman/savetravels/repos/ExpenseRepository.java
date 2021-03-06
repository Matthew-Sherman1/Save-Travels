package com.matthewsherman.savetravels.repos;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.matthewsherman.savetravels.models.Expense;

@Repository
public interface ExpenseRepository extends CrudRepository<Expense, Long> {
	List<Expense> findAll();
}
