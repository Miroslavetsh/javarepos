package org.obrii.mit.dp2021.toloshnyi.toloshnyilab3.data;

import java.io.Serializable;

public class Data implements Serializable {
    private int id;
    private String patreon;
    private String name;
    private int age;
    private String email;
    private String subscribed;
    private String notification;
    private int likes;
    private int dislikes;
    private String comment;
    
    public Data() {
    }
    
    public Data(int id, String patreon, String name, int age, String email, String subscribed, String notification, int likes, int dislikes, String comment) {
        this.id = id;
        this.patreon = patreon;
        this.name = name;
        this.age = age;
        this.email = email;
        this.subscribed = subscribed;
        this.notification = notification;
        this.likes = likes;
        this.dislikes = dislikes;
        this.comment = comment;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPatreon() {
        return patreon;
    }

    public void setPatreon(String patreon) {
        this.patreon = patreon;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    
    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSubscribed() {
        return subscribed;
    }

    public void setSubscribed(String subscribed) {
        this.subscribed = subscribed;
    }

    public String getNotification() {
        return notification;
    }

    public void setNotification(String notification) {
        this.notification = notification;
    }

    public int getLikes() {
        return likes;
    }

    public void setLikes(int likes) {
        this.likes = likes;
    }

    public int getDislikes() {
        return dislikes;
    }

    public void setDislikes(int dislikes) {
        this.dislikes = dislikes;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    @Override
    public String toString() {
        return "Data{" + "id=" + id + ", isPatreon=" + patreon + ", name=" + name + ", age=" + age + ", email=" + email + ", subscribed=" + subscribed + ", notification=" + notification + ", likes=" + likes + ", dislikes=" + dislikes + ", comment=" + comment + '}';
    }
}
