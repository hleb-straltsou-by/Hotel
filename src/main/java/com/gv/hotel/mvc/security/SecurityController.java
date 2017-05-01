package com.gv.hotel.mvc.security;

import org.springframework.security.access.annotation.Secured;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import javax.annotation.security.RolesAllowed;

@Controller
public class SecurityController {

    //JSR-250 Security
    @RolesAllowed(value={"ROLE_USER", "ROLE_ADMIN"})
    @RequestMapping(value = "/adminOrSuperUserCanCall", method = RequestMethod.GET)
    public ModelAndView adminOrSuperUserCanCall() {
        System.out.println("SecurityController adminOrSuperUserCanCall() is called");
        return new ModelAndView("/security/admin");
    }

    //Spring Security
    //SpEL usage at method level security
    @PreAuthorize("hasRole('ADMIN') || hasRole('USER')")
    @RequestMapping(value="/userOrAdminCanCallSpEL", method=RequestMethod.GET)
    public ModelAndView userOrAdminCanCall() {
        System.out.println("SecurityController userOrAdminCanCall() is called with ROLE_ADMIN or ROLE_USER");
        return new ModelAndView("/security/profile");
    }

    //Spring Security
    @Secured(value={"ROLE_ADMIN"})
    @RequestMapping(value="/adminMethodSecured", method=RequestMethod.GET)
    public ModelAndView adminMethodSecured() {
        System.out.println("SecurityController adminMethodSecured() is called with ADMIN ROLE");
        return new ModelAndView("/security/admin");

    }
}
