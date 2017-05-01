package com.gv.hotel.mvc.exception;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Component
/**
 * Handles exception implementing Spring HandlerExceptionResolver
 */
public class ExceptionHandler implements HandlerExceptionResolver {

    /** object for logging */
    private static final Logger logger = LoggerFactory.getLogger(ExceptionHandler.class);

    @Override
    /**
     * returns log of errors to the view
     */
    public ModelAndView resolveException(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse,
                                         Object o, Exception e) {
        System.out.println("Spring MVC ExceptionHandler handling");
        logger.error("ErrorLog: ", e);
        return new ModelAndView("error/exception", "exceptionMsg", "ExceptionHandler msg: " + e.toString());
    }
}
