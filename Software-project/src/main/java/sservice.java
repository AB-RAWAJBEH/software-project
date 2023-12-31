
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

import java.time.LocalDateTime;
import java.time.Month;



public class sservice
{
	Admin admin;
	Client user;
	Service service;
	
	
	public sservice(Client client)
	{
		this.service = new Service();
		this.user = client;
		admin = new Admin("Abrawajbeh", "Ab123");
		admin.login("Abrawajbeh","Ab123");
	}
	
	@Given("user is login")
	public void user_is_login() 
	{
		user.set("hadeel darawsha", "hadeel", "1234", "0569025697", "tubas");
		user.register( admin );
	}

	@When("show service")
	public void show_service() 
	{
		
	}

	@Then("printf Service")
	public void printf_service() 
	{
		System.out.println("Name of Service:\t \t \t ");  System.out.println(service.name);
		System.out.println("description of Service:\t \t \t ");  System.out.println(service.description);
		System.out.println("cost of service:\t \t \t ");  System.out.println(service.costofservice);
	}

	@Given("user is logout")
	public void user_is_logout() 
	{
		 admin.logout();
		 
		 assertEquals(false,admin.isLogged());
	}

	
}
	

