package com.gv.hotel.mvc.orders.services;

import com.gv.hotel.mvc.orders.models.OrderModel;

/**
 * handles orders
 */
public class OrderService {

    /**
     * handles order and returns message
     */
    public String bookRoom(OrderModel orderModel) {
            return new String("Success");
    }
}
