package employee_management.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

import employee_management.dao.AdminDao;
import employee_management.dto.AdminDto;

@Controller
public class AdminController {
	@Autowired
	AdminDao adminDao;

	@RequestMapping("/adminreg")
	public String adminreg() {
		return "adminreg";
	}
	@RequestMapping("/admin")
	public String admin()
	{
		return "admin";
	}
	@RequestMapping("/adminregister")
	public void adminRegister(@ModelAttribute AdminDto adminDto) {
		adminDao.adminRegister(adminDto);
	}

	@RequestMapping("/adminlogin")
	public RedirectView adminLogin(@ModelAttribute AdminDto adminDto) {
		AdminDto d1 = adminDao.check(adminDto.getId());
		String username=adminDto.getUsername();
		if(username.equals(d1.getUsername()))
		return new RedirectView("home");
		else
			return new RedirectView("admin");
	}
	@RequestMapping("/logout")
	public String logout()
	{
		return "admin";
	}
}
