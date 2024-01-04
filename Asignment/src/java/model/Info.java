/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class Info {
    
    String image,title,content;
    int id;

    public Info() {
    }

    public Info(String image, String title, String content) {
        this.image = image;
        this.title = title;
        this.content = content;
    }

    

    public Info(String image, String title, String content,  int id) {
        this.image = image;
        this.title = title;
        this.content = content;
        this.id = id;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "Info{" + "image=" + image + ", title=" + title + ", content=" + content + ", id=" + id + '}';
    }


    
    
}
