package com.example.sweater.domain;

import org.springframework.security.core.GrantedAuthority;

public enum FoodType implements GrantedAuthority {
 Complex,Breakfast,Lunch,Dinner;
    @Override
    public String getAuthority() {
        return name();
    }
}


