package com.face.hibernate_simple_program;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import Student_BO.student;

public class App 
{
    public static void main( String[] args )
    {
        student st=new student();
        st.setId(01);
        st.setName("Nibyamol");
        st.setGender("Female");
        Configuration cn=new Configuration().configure().addAnnotatedClass(student.class);
        
        SessionFactory sf=cn.buildSessionFactory();
        Session session=sf.openSession();
        Transaction tn=session.beginTransaction();
        session.save(st);
        tn.commit();
        
    }
}
