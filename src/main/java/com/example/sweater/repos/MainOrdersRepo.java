package com.example.sweater.repos;

import com.example.sweater.domain.MainOrders;
import org.springframework.data.repository.CrudRepository;
public interface MainOrdersRepo extends CrudRepository<MainOrders,Long> {
}
