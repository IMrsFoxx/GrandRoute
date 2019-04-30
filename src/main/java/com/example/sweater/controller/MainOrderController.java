package com.example.sweater.controller;

import com.example.sweater.domain.FoodType;
import com.example.sweater.domain.MainOrders;
import com.example.sweater.domain.Role;
import com.example.sweater.domain.TypeRoom;
import com.example.sweater.repos.MainOrdersRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import java.util.stream.Collectors;

@Controller
@RequestMapping("/mainorder")
public class MainOrderController {

    @Autowired
    private MainOrdersRepo mainOrdersRepo;


    @GetMapping("/ServicePage")
    public String mainorder(Model model){

        model.addAttribute ("typeFood", FoodType.values ());
        model.addAttribute ("typeRoom", TypeRoom.values ());
        return "ServicePage";
    }

    @PostMapping("/ServicePage")
    public String bookingRoom(
            @RequestParam String Name,
            @RequestParam String Soname,
            @RequestParam String Passport,
            @RequestParam String Datacome,
            @RequestParam String Datearrive,
            @RequestParam String food,
            @RequestParam String SPA,
            @RequestParam String Swim,
            @RequestParam String Gym,
            @RequestParam String typeRoom

     ){
        MainOrders mainOrders = new MainOrders ();


        mainOrders.setNameClient (Name);
        mainOrders.setSonameClient (Soname);
        mainOrders.setPassportClient (Passport);
        mainOrders.setDateCome (Datacome);
        mainOrders.setDateArrive (Datearrive);

        Set<FoodType>foodType = new HashSet<> ();
        foodType.add (FoodType.valueOf (food));
        mainOrders.setFoodTypes (foodType);

        mainOrders.setSpa (SPA);
        mainOrders.setSwimPool (Swim);
        mainOrders.setGym (Gym);

        Set<TypeRoom>typeRooms = new HashSet<> ();
        typeRooms.add (TypeRoom.valueOf (typeRoom));
        mainOrders.setTypeRooms (typeRooms);



        mainOrdersRepo.save (mainOrders);

        return "redirect:/greeting";
    }

}
