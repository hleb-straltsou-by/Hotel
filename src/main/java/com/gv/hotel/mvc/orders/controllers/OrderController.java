package com.gv.hotel.mvc.orders.controllers;

import com.gv.hotel.mvc.orders.models.OrderModel;
import com.gv.hotel.mvc.orders.services.OrderService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
/**
 * Receives requests for executing orders and returns response to the view
 */
public class OrderController {

    @RequestMapping(value = "/order/do", method = RequestMethod.POST)
    /**
     * handles order and returns response information to the client
     */
    public ModelAndView executeOrder(@ModelAttribute("orderModel") OrderModel orderModel) {
        OrderService orderService = new OrderService();
        return new ModelAndView("service/orders", "serverMessage", orderService.bookRoom(orderModel));
    }
}
