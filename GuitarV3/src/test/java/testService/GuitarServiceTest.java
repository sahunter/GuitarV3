package testService;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;


import dao.IGuitar;
import dao.IInventory;
import dao.dataAccess;

import model.Guitar;
import model.Inventory;


public class GuitarServiceTest {

	@Test
	public void test() throws Exception {
		IInventory i = dataAccess.createInventoryDao();
		Inventory list = i.getInventorys();
		assertEquals(list.size(),4);
	}

}
