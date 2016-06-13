package testSqliteDao;

import static org.junit.Assert.*;

import java.sql.SQLException;

import org.junit.Test;

public class InventoryImplTest {

	@Test
	public void test(){
		sqliteDao.InventoryImpl impl = new sqliteDao.InventoryImpl();
		try {
			assertEquals(impl.getInventorys().size(),4);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


}
