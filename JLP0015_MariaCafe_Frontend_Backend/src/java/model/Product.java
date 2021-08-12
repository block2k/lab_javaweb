/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;

/**
 *
 * @author ADMIN
 */
public class Product {

    private int id;
    private String name;
    private String image;
    private String shortDes;
    private String detailDes;
    private Date dateCreated;
    private double price;

    public Product() {
    }

    public Product(int id, String name, String image, String shortDes, String detailDes, Date dateCreated, double price) {
        this.id = id;
        this.name = name;
        this.image = image;
        this.shortDes = shortDes;
        this.detailDes = detailDes;
        this.dateCreated = dateCreated;
        this.price = price;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getShortDes() {
        return shortDes;
    }

    public void setShortDes(String shortDes) {
        this.shortDes = shortDes;
    }

    public String getDetailDes() {
        return detailDes;
    }

    public void setDetailDes(String detailDes) {
        this.detailDes = detailDes;
    }

    public Date getDateCreated() {
        return dateCreated;
    }

    public void setDateCreated(Date dateCreated) {
        this.dateCreated = dateCreated;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "Product{" + "id=" + id + ", name=" + name + ", image=" + image + ", shortDes=" + shortDes + ", detailDes=" + detailDes + ", dateCreated=" + dateCreated + ", price=" + price + '}';
    }

}
