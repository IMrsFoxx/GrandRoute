package com.example.sweater.controller;

import com.example.sweater.domain.HotelBooking;
import com.example.sweater.repos.HotelBookingRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
public class MainController {
    @Autowired
    private HotelBookingRepo hotelBookingRepo;

    @GetMapping("/")
    public String home() {
        return "home";
    }


    @GetMapping("/greeting")
    public String greeting(){
        return "greeting";
    }
    @PostMapping("/greeting")
    public String add(@RequestParam String nameUser, @RequestParam String emailUser,
                      @RequestParam String phoneUser)
                      {
        HotelBooking message = new HotelBooking(nameUser,emailUser,phoneUser);

        hotelBookingRepo.save(message);


        return "greeting";
    }


}
