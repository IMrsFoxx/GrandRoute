package com.example.sweater.controller;

import com.example.sweater.repos.MainOrdersRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/mainorder")
public class MainOrderController {

    @Autowired
    private MainOrdersRepo mainOrdersRepo;


    @GetMapping
    public String mainorder(){
        return "";
    }

}
