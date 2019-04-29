package com.example.sweater.domain;

import org.springframework.security.core.GrantedAuthority;

public enum TypeRoom implements GrantedAuthority {
    Lux, Standart, Econom, ChildrenRoom;

    @Override
    public String getAuthority() {
        return null;
    }
}
