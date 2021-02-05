/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.obrii.mit.dp2021.toloshnyi.dp2021project;

import java.util.Arrays;
import java.util.List;

/**
 *
 * @author gxufh
 */
public class User {
    
    
    private int id;
    private String name;
    private String surname;
    private String gender;
    private List<String> languages;
    private String country;
    
    public User() {
    }
    
    public User(String name, String surname, String gender, String[] languages, String country) {
        this.name = name;
        this.surname = surname;
        this.gender = gender;
        if (languages != null) this.languages = Arrays.asList(languages);
        this.country = country;
        
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

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public List<String> getLanguages() {
        return languages;
    }

    public void setLanguages(List<String> languages) {
        this.languages = languages;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }
    
    @Override
    public String toString() {
        return "User{Name = " + name + ", Surname = " + surname + ", Gender=" + gender + ", Languages = " + languages + ", Country = " + country + "}";
    }
}
