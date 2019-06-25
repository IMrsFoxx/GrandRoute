package com.example.sweater.controller;

import com.example.sweater.repos.HotelBookingRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class ContactController {

    private final HotelBookingRepo hotelBookingRepo;

    @Autowired
    public ContactController(HotelBookingRepo hotelBookingRepo) {
        this.hotelBookingRepo = hotelBookingRepo;
    }

    @GetMapping("/ListContactUs")
    public String getListConctact(Model model){
        model.addAttribute ("conts",hotelBookingRepo.findAll ());
        return "ListContacts";
    }

    @GetMapping("/ListContactUs/{cont.id}")
    public String getListConctacts( @PathVariable("cont.id") String parameter){
        hotelBookingRepo.deleteById (Long.parseLong (parameter));
         return "redirect:/ListContactUs";
    }
}
