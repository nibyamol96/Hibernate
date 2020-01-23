package com.face.service;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import com.face.model.Login;
import com.face.model.Registration;



public class UserServiceImpl implements UserService {

	public void register(Registration user) {
		//System.out.println("Register method in Implented class");
		
      Configuration cn=new Configuration().configure().addAnnotatedClass(Registration.class);
		
        SessionFactory sf=new Configuration().configure().buildSessionFactory();
        Session session=sf.openSession();
        Transaction tn=session.beginTransaction();
        System.out.println(user.getName());
        session.save(user);
        tn.commit();
	}
	
	
	// LOGIN PROCESS
	public List<Registration> validateUser (Login login) {
		SessionFactory sf=new Configuration().configure().buildSessionFactory();
		Session session=sf.openSession();
		Transaction tx=session.beginTransaction();
          
        
		  
		  Query q=session.createQuery("from Registration where username='"+login.getUsername()+"' and password='"+login.getPassword()+"'");
		  List<Registration> user=q.list();
		 // tx.commit();
		return user.size()>0?user:null;
	  }
	
	
	
	
	

}
