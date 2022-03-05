package com.stock;

/*
 * This is the stock_management's stock model.
 */

public class stock {

	
	private int stockno;
    private String itemname;
    private String itemdescr;
    private String unit;
    private String rate;
    private String quantity;
    private String amount;
    
    public stock (int stockno, String itemname, String itemdescr, String unit, String rate, String quantity, String amount) {
    	super();
    	
    	this.stockno = stockno;
    	this.itemname = itemname;
        this.itemdescr = itemdescr;
        this.unit = unit;
        this.rate = rate;
        this.quantity = quantity;
        this.amount = amount;
    }

    /*
     * return the stockno.
     */
	public int getStockno() {
		return stockno;
	}

	/*
	 * @param Stockno the stockno to set.
	 */
	public void setStockno(int stockno) {
		this.stockno = stockno;
	}

	/*
	 * return the itemname.
	 */
	public String getItemname() {
		return itemname;
	}

	/*
	 * @param Itemname the itemname to set.
	 */
	public void setItemname(String itemname) {
		this.itemname = itemname;
	}

	/*
	 * return the itemdescr.
	 */
	public String getItemdescr() {
		return itemdescr;
	}

	/*
	 * @param Itemdescr the itemdescr to set.
	 */
	public void setItemdescr(String itemdescr) {
		this.itemdescr = itemdescr;
	}

	/*
	 * return the unit.
	 */
	public String getUnit() {
		return unit;
	}

	/*
	 * @param Unit the unit to set.
	 */
	public void setUnit(String unit) {
		this.unit = unit;
	}

	/*
	 * return the rate.
	 */
	public String getRate() {
		return rate;
	}

	/*
	 * @param Rate the rate to set.
	 */
	public void setRate(String rate) {
		this.rate = rate;
	}

	/*
	 * return the quantity.
	 */
	public String getQuantity() {
		return quantity;
	}

	/*
	 * @param Quantity the quantity to set.
	 */
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}

	/*
	 * return the amount.
	 */
	public String getAmount() {
		return amount;
	}

	/*
	 * @param Amount the amount to set.
	 */
	public void setAmount(String amount) {
		this.amount = amount;
	}

	
    
}
