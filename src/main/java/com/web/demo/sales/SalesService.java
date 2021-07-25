package com.web.demo.sales;

import com.web.demo.dtos.SalesOrderDTO;

import java.util.List;

public interface SalesService {

    List<SalesOrderDTO> readSalesDetails();
}
