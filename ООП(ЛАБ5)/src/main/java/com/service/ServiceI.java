package com.service;

import com.entity.Client;
import com.entity.Employee;

import java.util.List;

public interface ServiceI {

    public List<Client> getAllClients();

    public void saveClient(Client client);

    public List<Employee> getAllEmployees();

    public void saveEmployee(Employee employee);
}
