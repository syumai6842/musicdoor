package com.example.service.Model.Beans;

import java.io.Serializable;
import java.util.Date;

public class PostBeans implements Serializable {
    private int from, to;
    private String artist, name, comment, url;
    private Date date;

    public Date getDate() {
        return this.date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getFrom() {
        return this.from;
    }

    public void setFrom(int from) {
        this.from = from;
    }

    public int getTo() {
        return this.to;
    }

    public void setTo(int to) {
        this.to = to;
    }

    public String getArtist() {
        return this.artist;
    }

    public void setArtist(String artist) {
        this.artist = artist;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getComment() {
        return this.comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public String getUrl() {
        return this.url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public static Object getDeclaredConstructor() {
        return null;
    }

}
