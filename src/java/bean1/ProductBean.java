/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean1;

/**
 *
 * @author Vedansh
 */
public class ProductBean {
    private String photo;
    private String category;
    private String description;

   
    private String initial_price;
    private String schedule_date;
    private int b_id;

    public String getPhoto() {
        return photo;
    }

    public String getCategory() {
        return category;
    }
     
     public void setDescription(String description) {
        this.description = description;
    }

    public String getDescription() {
        return description;
    }
    
    public String getInitial_price() {
        return initial_price;
    }

    public String getSchedule_date() {
        return schedule_date;
    }

    public int getB_id() {
        return b_id;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public void setInitial_price(String initial_price) {
        this.initial_price = initial_price;
    }

    public void setSchedule_date(String schedule_date) {
        this.schedule_date = schedule_date;
    }

    public void setB_id(int b_id) {
        this.b_id = b_id;
    }
    
    
}
