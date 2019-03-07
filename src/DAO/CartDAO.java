package DAO;

import java.util.HashMap;

import BEAN.Cart;
import BEAN.Item;

public interface CartDAO {
public HashMap<Integer, Item> insertToCart(int key,Item item,Cart cart);
public void removeToCart(int product,Cart cart);
public void removeAllToCart(Cart cart);
public int countItem(Cart cart);
public double total(Cart cart);


}
