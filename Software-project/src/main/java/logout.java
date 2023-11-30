import static org.junit.Assert.assertEquals;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class logout {
	
	Admin admin;
	public logout ()
	{
		admin = new Admin("hadeel","111");
	}
	@Given("that the admin is loged in")
	public void that_the_admin_is_loged_in() {
		admin.login("Abeer","111");
		}

@When("the admin logs out")
public void the_admin_logs_out() {
	admin.logout();
}
@Then("the admin is  logged out")
public void the_admin_is_logged_out() {
    // Write code here that turns the phrase above into concrete actions
	admin.logout();
	assertEquals( false,admin.isLogged()  );
}


}