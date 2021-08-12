/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author ADMIN
 */
public class Introduction {

    private String title;
    private String picture;
    private String shortDescription;
    private String detailDescription;

    public Introduction() {
    }

    public Introduction(String title, String picture, String shortDescription, String detailDescription) {
        this.title = title;
        this.picture = picture;
        this.shortDescription = shortDescription;
        this.detailDescription = detailDescription;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public String getShortDescription() {
        return shortDescription;
    }

    public void setShortDescription(String shortDescription) {
        this.shortDescription = shortDescription;
    }

    public String getDetailDescription() {
        return detailDescription;
    }

    public void setDetailDescription(String detailDescription) {
        this.detailDescription = detailDescription;
    }

    @Override
    public String toString() {
        return "Introduction{" + "title=" + title + ", picture=" + picture + ", shortDescription=" + shortDescription + ", detailDescription=" + detailDescription + '}';
    }

}
