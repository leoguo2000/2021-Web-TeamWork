package Admin;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

import com.dao.TAdminDAO;
import com.model.TAdmin;

public class TestAdmin {
	
	@Test
	public void addAdmin(){
		String config = "WebRoot/WEB-INF/applicationContext.xml";
		ApplicationContext ac = new FileSystemXmlApplicationContext(config);
		System.out.println(1);
		TAdminDAO TAdminDAO = (TAdminDAO) ac.getBean("TAdminDAO");
		System.out.println(2);
		TAdmin admin = new TAdmin();
		admin.setUserName("admin");
		admin.setUserPw("123456");
		try {
			TAdminDAO.save(admin);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
