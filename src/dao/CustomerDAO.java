package dao;

import java.util.List;

import entity.Customer;
//Let use interface(abstraction, flexibility, reduce coupling between DAO impl and the rest of the application, Encapsulation)
public interface CustomerDAO {

	public List<Customer> getCustomers();
	public void saveCustomer(Customer theCustomer);

	public Customer getCustomer(int theId);
	public void deleteCustomer(int theId);
	public List<Customer> getGoldMembers();
	
}
