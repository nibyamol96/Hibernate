package com.face.service;


import java.util.List;

import com.face.model.Login;
import com.face.model.Registration;


public interface UserService {
	void register(Registration user);    //interface for registration
	List<Registration> validateUser(Login login);   //interface for login
	
}
