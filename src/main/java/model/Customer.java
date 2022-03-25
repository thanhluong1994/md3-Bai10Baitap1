package model;

import javafx.scene.image.Image;

public class Customer {
   private String name;
   private String DateOfBirth;
   private String Address;
   private String image;
    public Customer() {
    }

    public Customer(String name, String dateOfBirth, String address,String image) {
        this.name = name;
        this.DateOfBirth = dateOfBirth;
        this.Address = address;
        this.image = image;

    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDateOfBirth() {
        return DateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        DateOfBirth = dateOfBirth;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String address) {
        Address = address;
    }
}
