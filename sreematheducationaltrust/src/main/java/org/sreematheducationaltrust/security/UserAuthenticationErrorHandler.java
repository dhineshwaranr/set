package org.sreematheducationaltrust.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationListener;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.event.AbstractAuthenticationEvent;
import org.springframework.security.authentication.event.AuthenticationFailureBadCredentialsEvent;
import org.springframework.security.authentication.event.AuthenticationSuccessEvent;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Component;
import org.sreematheducationaltrust.domain.AdminUsers;
import org.sreematheducationaltrust.service.AdminTaskPanelService;

@Component
public class UserAuthenticationErrorHandler  implements ApplicationListener <AbstractAuthenticationEvent>
{
	
	@Autowired
	AdminTaskPanelService newsServiceManager;
	
    public void onApplicationEvent(AbstractAuthenticationEvent appEvent)
    {
        if (appEvent instanceof AuthenticationSuccessEvent)
        {
            AuthenticationSuccessEvent event = (AuthenticationSuccessEvent) appEvent;
            
            org.springframework.security.core.userdetails.User user =  (User)event.getAuthentication().getPrincipal();
            String email = user.getUsername();     
    	    
    	    AdminUsers suser = newsServiceManager.getUserByUserName(email);
    	    if(user != null){
    	    	newsServiceManager.resetAttempt(suser.getUserName());
    	    }
    	    
        }

        if (appEvent instanceof AuthenticationFailureBadCredentialsEvent)
        {
                    AuthenticationFailureBadCredentialsEvent event = (AuthenticationFailureBadCredentialsEvent) appEvent;
                    String email = (String)event.getAuthentication().getPrincipal();
                    
                    AdminUsers user = newsServiceManager.getUserByUserName(email);
                   if(user != null){
                	  Integer attempts = newsServiceManager.verifyAttempt(user.getUserName());
                	  
                	  if(attempts >= 5){
                		  newsServiceManager.blockUser(user.getUserName());
                		  throw new BadCredentialsException("Your account has been deactivated due to too many login failures. Please use the forgot password feature to reactivate your account and generate a new password"); 
                	  }
                  }
                    
        }
    }
}