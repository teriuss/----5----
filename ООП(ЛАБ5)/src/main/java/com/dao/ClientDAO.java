package com.dao;

import com.entity.Client;

import java.util.List;


public interface ClientDAO {
    public List<Client> getAllClients();

    public void saveClient(Client client);
}

