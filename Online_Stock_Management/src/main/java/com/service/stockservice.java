package com.service;

import java.util.ArrayList;

import com.stock.stock;

/*
 * Implement of task form.
 */

public interface stockservice {
	

	/*
     * insert/add into the detail of task form.
     */
    public boolean insertaddstock (String stockno, String itemname, String itemdescr, String unit, String rate, String quantity, String amount);
    /*
     * list the detail of task form.
     */
    public ArrayList<stock> getstocklist();
    /*
     * update the detail of stock form.
     */
    public boolean updatestock (String stockno, String itemname, String itemdescr, String unit, String rate, String quantity, String amount);
    /*
     * remove the detail of stock form.
     */
    public boolean deletestock(String stockno, String itemname, String itemdescr, String unit, String rate, String quantity, String amount);
   
    
}
