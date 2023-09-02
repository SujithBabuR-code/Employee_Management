package employee_management.controller;

import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import employee_management.dao.AdminDao;
import employee_management.dao.EmployeeDao;
import employee_management.dto.AdminDto;
import employee_management.dto.EmployeeDto;

@org.springframework.stereotype.Controller
public class Controller {

	@Autowired
	EmployeeDao employeeDao;

	@RequestMapping("/home")
	public String home(Model m) {
		List<EmployeeDto> lct = employeeDao.fetchAll();
		m.addAttribute("objects", lct);
		return "home";
	}

	@RequestMapping("/addemp")
	public String addemp() {
		return "addemp";
	}

	// from addemp form
	@PostMapping("/createEmp")
	public RedirectView createEmp(@ModelAttribute EmployeeDto employeeDto) {
		employeeDao.createEmp(employeeDto);
		return new RedirectView("home");
	}

//	@RequestMapping("/fetchall")
//	public String fetchAll()
//	{
//		List<EmployeeDto> lct=employeeDao.fetchAll();
//		 ModelAndView modelAndView=new ModelAndView("details.jsp");
//		 modelAndView.addObject("objects", lct);
//		 return "details";
//	}
	@RequestMapping("/delete")
	public RedirectView delete(@RequestParam int id) {
		employeeDao.delete(id);
		return new RedirectView("home");
	}

	@RequestMapping("/edit")
	public String edit() {
		return "edit";
	}

	@RequestMapping("/update")
	public RedirectView updateEmp(@ModelAttribute EmployeeDto employeeDto) {
		// System.out.println(employeeDto.getEmail()+employeeDto.getId());
		employeeDao.updateEmp(employeeDto);
		return new RedirectView("home");
	}
	
}
