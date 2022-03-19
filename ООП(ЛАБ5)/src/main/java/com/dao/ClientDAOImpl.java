package com.dao;

import com.entity.Client;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ClientDAOImpl implements ClientDAO{

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Client> getAllClients() {

    Session session = sessionFactory.getCurrentSession();

    Query<Client> query = session.createQuery("from Client", Client.class);
    List<Client> allClients = query.getResultList();

        return allClients;
    }

    @Override
    public void saveClient(Client client) {
        Session session = sessionFactory.getCurrentSession();
        session.save(client);
    }
}
