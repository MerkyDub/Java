package com.caezar.savetravel.savetravel.controllers;
import java.util.List;
import javax.validation.Valid;

import com.caezar.savetravel.savetravel.models.Expense;
import com.caezar.savetravel.savetravel.services.ExpenseService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.PutMapping;




@Controller
public class ExpenseController {

    // the service must be passed through as a variable before it can be used in the controller 
    @Autowired
    private ExpenseService expenseService;


    @RequestMapping("/expenses")
    public String index(Expense expense , Model model){
        //call the list function made in the service file to use the function .all() to retrieve all data 
        List<Expense> allExpenses = expenseService.allExpenses();
        model.addAttribute( "expenses" , allExpenses);
        return "index";
    }

// model model is specifically for whats being viewed on the page
// modelAttribute is specifically for the form:form 

    @PostMapping("/expenses")
    public String create(@Valid @ModelAttribute("expense") Expense expense, BindingResult result, Model model) {
           // always need to pass in model when using form:form
        if (result.hasErrors()) {
            List<Expense> allExpenses = expenseService.allExpenses();
            model.addAttribute( "expenses" , allExpenses);
            return "index";
        } else {
            expenseService.createExpense(expense);
            return "redirect:/expenses";
        }
    }


    @GetMapping("/expenses/edit/{id}")
    public String updateExpenses(@ModelAttribute("expense") Expense expense, 
    @PathVariable("id") Long id, Model model)
     {
        //path variable is used to retrieve the id from the url
        Expense expenses = expenseService.findExpense(id);
        //create new variable and call the expenseService .findExpense() 
        model.addAttribute("expenses",expenses);

        return "edit";
    }


    //update expense
    @PutMapping("/expenses/edit")
    public String updating(@Valid @ModelAttribute("expense") Expense expense, BindingResult result) {
        if (result.hasErrors()) {
            return "edit";
        } else {
        expenseService.updateExpense(expense);
            return "redirect:/expenses";
                }
        }

        //delete expenses
        @RequestMapping(value="/expenses/{id}", method=RequestMethod.DELETE)
        public String destroy(@PathVariable("id") Long id) {
          expenseService.deleteExpenses(id);
            return "redirect:/expenses";
        }
    
        //show expenses
        @GetMapping("/expenses/show/{id}")
        public String show(@ModelAttribute("expense") Expense expense, 
        @PathVariable("id") Long id, Model model){
           Expense showExpense = expenseService.findExpense(id);
            model.addAttribute("expenses", showExpense);
            return "show";
        }

}
