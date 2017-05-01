package com.gv.hotel.mvc.orm;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.gv.hotel.mvc.bean.User;
import java.util.List;

@Controller
/**
 * Controls access to the database and returns response objects
 */
public class ORMController {

    @Autowired
    /** service for communicating with database */
    private ORMService ormService;

    @RequestMapping(value = "/ormFindAllUsers", method= RequestMethod.GET)
    /**
     * returns all users stored in database
     */
    public ModelAndView ormFindAllUsers() {
        System.out.println("ORMController ormFindAllUsers is called");
        List<User> users = ormService.queryFindAllUsersJPA();
        return new ModelAndView("/orm/orm", "resultObject", users);
    }

    @RequestMapping(value = "/queryFindByIdUser/{userid}", method = RequestMethod.GET)
    /**
     * returns user stored in database according id
     */
    public ModelAndView queryFindByIdUser(@PathVariable("userid") int userid) {
        System.out.println("ORMController queryFindByIdUser is called");
        User user = ormService.queryFindUserById(userid);
        return new ModelAndView("/orm/orm", "resultObject", user);
    }
}
