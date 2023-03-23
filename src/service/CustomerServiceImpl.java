package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.CustomerDAO;
import entity.Customer;


//(Service component)
@Service
public class CustomerServiceImpl implements CustomerService {

	// need to inject dependencies intoo customer dao
	@Autowired
	private CustomerDAO customerDAO;
	// Let override int and create a transaction, and Spring will manage transaction automatically
	@Override
	@Transactional
	public List<Customer> getCustomers() {
		return customerDAO.getCustomers();
	}
     @Override
	@Transactional
	public void saveCustomer(Customer theCustomer) {

		customerDAO.saveCustomer(theCustomer);
	}
   @Override
	@Transactional
	public Customer getCustomer(int theId) {
		
		return customerDAO.getCustomer(theId);
	}
   @Override
	@Transactional
	public void deleteCustomer(int theId) {
		
		customerDAO.deleteCustomer(theId);
	}
@Override
@Transactional
public List<Customer> getGoldMembers() {
	// TODO Auto-generated method stub
	return customerDAO.getGoldMembers();
}
}





