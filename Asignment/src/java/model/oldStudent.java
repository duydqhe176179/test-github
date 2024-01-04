/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class oldStudent {

    String image, review, name;
    int id;

    public oldStudent() {
    }

    public oldStudent(String image, String review, String name) {
        this.image = image;
        this.review = review;
        this.name = name;
    }


    public oldStudent(String image, String review, String name, int id) {
        this.image = image;
        this.review = review;
        this.name = name;
        this.id = id;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getReview() {
        return review;
    }

    public void setReview(String review) {
        this.review = review;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "oldStudent{" + "image=" + image + ", review=" + review + ", name=" + name + ", id=" + id + '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }



}
