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

    private String introImage;
    private String introCaption;
    private String about;
    private int viewPage;

    public Introduction() {
    }

    public Introduction(String introImage, String introCaption, String about, int viewPage) {
        this.introImage = introImage;
        this.introCaption = introCaption;
        this.about = about;
        this.viewPage = viewPage;
    }

    public String getIntroImage() {
        return introImage;
    }

    public void setIntroImage(String introImage) {
        this.introImage = introImage;
    }

    public String getIntroCaption() {
        return introCaption;
    }

    public void setIntroCaption(String introCaption) {
        this.introCaption = introCaption;
    }

    public String getAbout() {
        return about;
    }

    public void setAbout(String about) {
        this.about = about;
    }

    public int getViewPage() {
        return viewPage;
    }

    public void setViewPage(int viewPage) {
        this.viewPage = viewPage;
    }

    public String[] formatViewPage() {
        return String.format("%05d", viewPage).split("");
    }

    @Override
    public String toString() {
        return "Introduction{" + "introImage=" + introImage + ", introCaption=" + introCaption + ", about=" + about + ", viewPage=" + viewPage + '}';
    }

}
