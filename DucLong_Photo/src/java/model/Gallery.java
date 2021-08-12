/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.List;

/**
 *
 * @author ADMIN
 */
public class Gallery {

    private int id;
    private String name;
    private String picture;
    private String description;
    private List<Image> list;

    public Gallery() {
    }

//    public Gallery(int id, String name, String picture, String description) {
//        this.id = id;
//        this.name = name;
//        this.picture = picture;
//        this.description = description;
//    }
    public Gallery(int id, String name, String picture, String description, List<Image> list) {
        this.id = id;
        this.name = name;
        this.picture = picture;
        this.description = description;
        this.list = list;
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

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public List<Image> getList() {
        return list;
    }

    public void setList(List<Image> list) {
        this.list = list;
    }

    @Override
    public String toString() {
        return "Gallery{" + "id=" + id + ", name=" + name + ", picture=" + picture + ", description=" + description + ", list=" + list + '}';
    }
    
}
