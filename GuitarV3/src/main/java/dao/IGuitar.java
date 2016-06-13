package dao;

import java.sql.SQLException;
import java.util.List;


import model.*;

public interface IGuitar {
	public List<Guitar> getAllGuitars();
	
	public void addGuitar(Guitar guitar) throws SQLException;
	public void deleteGuitar(Guitar guitar);
}
