package com.example.sweater.repos;

import com.example.sweater.domain.HotelBooking;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface HotelBookingRepo extends JpaRepository<HotelBooking, Long> {


}
