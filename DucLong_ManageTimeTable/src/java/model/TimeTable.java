/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Time;
import java.sql.Date;
import java.text.SimpleDateFormat;

/**
 *
 * @author ADMIN
 */
public class TimeTable {

    private Date date;
    private String slot;
    private Time timeFrom;
    private Time timeTo;
    private String className;
    private String teacherCode;
    private String roomName;

    public TimeTable() {
    }

    public TimeTable(Date date, String slot, Time timeFrom, Time timeTo, String className, String teacherCode, String roomName) {
        this.date = date;
        this.slot = slot;
        this.timeFrom = timeFrom;
        this.timeTo = timeTo;
        this.className = className;
        this.teacherCode = teacherCode;
        this.roomName = roomName;
    }

    public String getDate() {
        SimpleDateFormat formatter = new SimpleDateFormat("E dd-MM-yyyy");
        return formatter.format(date);
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getSlot() {
        return slot;
    }

    public void setSlot(String slot) {
        this.slot = slot;
    }

    public String getTimeFrom() {
        SimpleDateFormat formatter = new SimpleDateFormat("hh:mm");
        return formatter.format(timeFrom);
    }

    public void setTimeFrom(Time timeFrom) {
        this.timeFrom = timeFrom;
    }

    public String getTimeTo() {
        SimpleDateFormat formatter = new SimpleDateFormat("hh:mm");
        return formatter.format(timeTo);
    }

    public void setTimeTo(Time timeTo) {
        this.timeTo = timeTo;
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    public String getTeacherCode() {
        return teacherCode;
    }

    public void setTeacherCode(String teacherCode) {
        this.teacherCode = teacherCode;
    }

    public String getRoomName() {
        return roomName;
    }

    public void setRoomName(String roomName) {
        this.roomName = roomName;
    }

    @Override
    public String toString() {
        return "TimeTable{" + "date=" + date + ", slot=" + slot + ", timeFrom=" + timeFrom + ", timeTo=" + timeTo + ", className=" + className + ", teacherCode=" + teacherCode + ", roomName=" + roomName + '}';
    }

}
