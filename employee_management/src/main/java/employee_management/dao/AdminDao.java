package employee_management.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import org.springframework.stereotype.Component;

import employee_management.dto.AdminDto;

@Component
public class AdminDao {
	EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("dev");
	EntityManager entityManager = entityManagerFactory.createEntityManager();
	EntityTransaction entityTransaction = entityManager.getTransaction();

	public void adminRegister(AdminDto adminDto) {
		entityTransaction.begin();
		entityManager.persist(adminDto);
		entityTransaction.commit();
	}

	public AdminDto check(int id) {
		// TODO Auto-generated method stub
		AdminDto d1 = entityManager.find(AdminDto.class,id);
		return d1;
	}

}
