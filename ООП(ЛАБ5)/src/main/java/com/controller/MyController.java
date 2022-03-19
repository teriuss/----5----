package com.controller;

import com.entity.Client;
import com.entity.Employee;
import com.service.ServiceI;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;
import java.util.List;

@Controller
public class MyController {

    @Autowired
    private ServiceI serviceI;

    @RequestMapping("/clientList")
    public String showAllClients(Model model){

        List<Client> allClients = serviceI.getAllClients();
        model.addAttribute("allClients", allClients);

        return "all-clients";
    }

    @RequestMapping("/addNewClient")
    public String addNewClient(Model model){

        Client client = new Client();
        model.addAttribute("newClient", client);

        return "client-info";
    }


    @RequestMapping("/saveClient")
    public String saveClient(@ModelAttribute("newClient")
                             @Valid final Client client,
                             final BindingResult bindingResult){
        if(bindingResult.hasFieldErrors()){
            return "client-info";
        }
        serviceI.saveClient(client);
        return "redirect:/";
    }

    @RequestMapping("/employeeList")
    public String showAllEmployees(Model model){

        List<Employee> allEmployees = serviceI.getAllEmployees();
        model.addAttribute("allEmployees", allEmployees);

        return "all-employees";
    }

    @RequestMapping("/addNewEmployee")
    public String addNewEmployee(Model model){

        Employee employee = new Employee();
        model.addAttribute("newEmployee", employee);

        return "employee-info";
    }
}
