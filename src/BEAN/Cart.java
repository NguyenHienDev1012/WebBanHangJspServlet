package BEAN;

import java.util.HashMap;

public class Cart {
	private HashMap<Integer,Item> cartItems;
	public Cart(){
		cartItems=new HashMap<>();
	}
	public Cart(HashMap<Integer,Item> cartItems){
		this.cartItems=cartItems;
	}
	public HashMap<Integer, Item> getCartItems() {
		return cartItems;
	}
	public void setCartItems(HashMap<Integer, Item> cartItems) {
		this.cartItems = cartItems;
	}
	

}
