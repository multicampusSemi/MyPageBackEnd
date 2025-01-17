package com.project.model;

import lombok.Data;
import java.util.Date;

@Data
public class PjeModel {
    private int id;
    private String productName;
    private Date orderDate;
    private int quantity;
    private double totalPrice;
}
