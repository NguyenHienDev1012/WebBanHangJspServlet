package DAO;

import java.util.HashMap;
import java.util.Map;

import BEAN.Cart;
import BEAN.Item;

public class CartDAOImpl implements CartDAO {
	@Override
	public HashMap<Integer, Item> insertToCart(int key, Item item,Cart cart) {
		boolean bln=cart.getCartItems().containsKey(key);
		if(bln){
			int quantity_old=item.getQuantity();
			item.setQuantity(quantity_old+1);
			cart.getCartItems().put(item.getProduct().getId_Product(), item);
		}
		else{
			cart.getCartItems().put(item.getProduct().getId_Product(), item);
		}
		return cart.getCartItems();
		
	}

	@Override
	public void removeToCart(int idProduct,Cart cart) {
		boolean bln=cart.getCartItems().containsKey(idProduct);
		if(bln){
			cart.getCartItems().remove(idProduct);
		}
		
	}

	@Override
	public int countItem(Cart cart) {
		int count=0;
		count=cart.getCartItems().size();
		return count;
	}

	@Override
	public double total(Cart cart) {
		double total=0;
		for(Map.Entry<Integer,Item> list :cart.getCartItems().entrySet()){
			total+=list.getValue().getQuantity()*list.getValue().getProduct().getPrice_Product();
		}
		return total;
	}

	@Override
	public void removeAllToCart( Cart cart) {
		cart.getCartItems().clear();
		
	}

}
