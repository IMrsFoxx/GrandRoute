package com.example.sweater.domain;

import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name = "MainOrders")
public class MainOrders {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long order_id;
    private String nameClient;
    private String sonameClient;
    private String passportClient;
    private String dateCome;
    private String dateArrive;

    @ElementCollection(targetClass = Role.class,fetch = FetchType.EAGER)
    @CollectionTable(name = "food_type", joinColumns = @JoinColumn(name = "orders_id"))
    @Enumerated(EnumType.STRING)
    private Set<FoodType> foodTypes;

    private String swimPool;
    private String Gym;
    private String Spa;



    @ElementCollection(targetClass = Role.class,fetch = FetchType.EAGER)
    @CollectionTable(name = "room_type", joinColumns = @JoinColumn(name = "orders_id"))
    @Enumerated(EnumType.STRING)
    private Set<TypeRoom> typeRooms;

    public MainOrders() {
    }

    public MainOrders(String nameClient, String sonameClient, String passportClient, String dateCome,
                      String dateArrive, Set<FoodType> foodTypes, String swimPool,
                      String gym, String spa, Set<TypeRoom> typeRooms) {
        this.nameClient = nameClient;
        this.sonameClient = sonameClient;
        this.passportClient = passportClient;
        this.dateCome = dateCome;
        this.dateArrive = dateArrive;
        this.foodTypes = foodTypes;
        this.swimPool = swimPool;
        Gym = gym;
        Spa = spa;
        this.typeRooms = typeRooms;
    }

    public Long getOrder_id() {
        return order_id;
    }

    public void setOrder_id(Long order_id) {
        this.order_id = order_id;
    }

    public String getNameClient() {
        return nameClient;
    }

    public void setNameClient(String nameClient) {
        this.nameClient = nameClient;
    }

    public String getSonameClient() {
        return sonameClient;
    }

    public void setSonameClient(String sonameClient) {
        this.sonameClient = sonameClient;
    }

    public String getPassportClient() {
        return passportClient;
    }

    public void setPassportClient(String passportClient) {
        this.passportClient = passportClient;
    }

    public String getDateCome() {
        return dateCome;
    }

    public void setDateCome(String dateCome) {
        this.dateCome = dateCome;
    }

    public String getDateArrive() {
        return dateArrive;
    }

    public void setDateArrive(String dateArrive) {
        this.dateArrive = dateArrive;
    }

    public Set<FoodType> getFoodTypes() {
        return foodTypes;
    }

    public void setFoodTypes(Set<FoodType> foodTypes) {
        this.foodTypes = foodTypes;
    }

    public String getSwimPool() {
        return swimPool;
    }

    public void setSwimPool(String swimPool) {
        this.swimPool = swimPool;
    }

    public String getGym() {
        return Gym;
    }

    public void setGym(String gym) {
        Gym = gym;
    }

    public String getSpa() {
        return Spa;
    }

    public void setSpa(String spa) {
        Spa = spa;
    }

    public Set<TypeRoom> getTypeRooms()
    {
        return typeRooms;
    }

    public void setTypeRooms(Set<TypeRoom> typeRooms) {
        this.typeRooms = typeRooms;
    }
}
