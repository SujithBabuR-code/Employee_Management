package employee_management.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.springframework.stereotype.Component;

import employee_management.dto.EmployeeDto;

@Component
public class EmployeeDao {

	EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("dev");
	EntityManager entityManager = entityManagerFactory.createEntityManager();
	EntityTransaction entityTransaction = entityManager.getTransaction();

	public void createEmp(EmployeeDto employeeDto) {
		// TODO Auto-generated method stub
		entityTransaction.begin();
		entityManager.persist(employeeDto);
		entityTransaction.commit();

	}

	public List<EmployeeDto> fetchAll() {
		// TODO Auto-generated method stub
		Query query = entityManager.createQuery("select data from EmployeeDto data");
		List<EmployeeDto> list = query.getResultList();
		return list;
	}

	public void delete(int id) {
		// TODO Auto-generated method stub
		entityTransaction.begin();
		EmployeeDto d1= entityManager.find(EmployeeDto.class, id);
		entityManager.remove(d1);
		entityTransaction.commit();
	}

	public void updateEmp(EmployeeDto employeeDto) {
		// TODO Auto-generated method stub
		
		entityTransaction.begin();
		entityManager.merge(employeeDto);
		entityTransaction.commit();
	}

}
