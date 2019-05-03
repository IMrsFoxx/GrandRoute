package com.example.sweater.repos;

import com.example.sweater.domain.MainOrders;
import org.springframework.data.jpa.repository.JpaRepository;
public interface MainOrdersRepo extends JpaRepository<MainOrders,Long> {
}
