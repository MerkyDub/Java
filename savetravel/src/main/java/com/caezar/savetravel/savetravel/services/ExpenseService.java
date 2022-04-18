package com.caezar.savetravel.savetravel.services;

import java.util.List;
import java.util.Optional;
import com.caezar.savetravel.savetravel.models.Expense;
import com.caezar.savetravel.savetravel.repositories.ExpenseRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ExpenseService {
        // adding the Expense repository as a dependency
        @Autowired
        private ExpenseRepository expenseRepo;

        
        // returns all the Expenses
        public List<Expense> allExpenses() {
            return expenseRepo.findAll();
        }
        // creates an expense
        public Expense createExpense(Expense expense) {
            return expenseRepo.save(expense);
        }
        // retrieves an expense
        public Expense findExpense(Long id) {
            Optional<Expense> optionalExpense = expenseRepo.findById(id);
            if(optionalExpense.isPresent()) {
                return optionalExpense.get();
            } else {
                return null;
            }
        }
        // update an expense
        public Expense updateExpense(Expense expense){
            return expenseRepo.save(expense);
            // the update function is the same as the create function
        }

        // delete an expense
        public void deleteExpenses(Long id){
            expenseRepo.deleteById(id);
            return;
        }
}


