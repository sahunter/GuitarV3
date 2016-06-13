package dao;

import java.sql.SQLException;

import model.Guitar;
import model.Inventory;

public interface IInventory {
	public Inventory getInventorys() throws Exception;
	public void addGuitar(Guitar guitar) throws SQLException;
	public void deleteGuitar(Guitar guitar) throws SQLException;
}
