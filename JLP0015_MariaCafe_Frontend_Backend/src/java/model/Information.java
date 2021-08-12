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
public class Information {

    private String shortDes;
    private String address;
    private String tel;
    private String email;
    private String openHours;
    private String signature;

    public Information() {
    }

    public Information(String shortDes, String address, String tel, String email, String openHours, String signature) {
        this.shortDes = shortDes;
        this.address = address;
        this.tel = tel;
        this.email = email;
        this.openHours = openHours;
        this.signature = signature;
    }

    public String getShortDes() {
        return shortDes;
    }

    public void setShortDes(String shortDes) {
        this.shortDes = shortDes;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getOpenHours() {
        return openHours;
    }

    public void setOpenHours(String openHours) {
        this.openHours = openHours;
    }

    public String getSignature() {
        return signature;
    }

    public void setSignature(String signature) {
        this.signature = signature;
    }

    @Override
    public String toString() {
        return "Information{" + "shortDes=" + shortDes + ", address=" + address + ", tel=" + tel + ", email=" + email + ", openHours=" + openHours + ", signature=" + signature + '}';
    }

}
