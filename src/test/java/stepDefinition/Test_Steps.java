package stepDefinition;

import java.io.IOException;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import files.payload;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import static io.restassured.RestAssured.given;
import static org.junit.Assert.assertEquals;
import utils.Testdata;
import utils.Utils;

public class Test_Steps {
	static RequestSpecification res;
	Utils data = new Utils();
	Testdata td1 = new Testdata();
	static String token;
	Response resp;
	static Response reswhen;
	static RequestSpecification resgiven;

	@Given("^User is on Login Page and tries to login with \"([^\"]*)\" username and \"([^\"]*)\" password$")
	public void user_is_on_Login_Page_and_tries_to_login_with_username_and_password(String arg1, String arg2)
			throws IOException {
		resgiven = given().spec(data.requestSpecification());
	}

	@When("^user enters  \"([^\"]*)\" and  \"([^\"]*)\" and generates a unique access_token$")
	public void user_enters_and_and_generates_a_unique_access_token(String username, String password)
			throws IOException {
		resgiven.body(payload.authToken(username, password));
		reswhen = resgiven.when().post("api/auth/token").then().extract().response();
	}

	@Then("^user is loggedIn \"([^\"]*)\" with status code (\\d+)$")
	public void user_is_loggedIn_with_status_code(String arg1, int statuscode){
		assertEquals(reswhen.getStatusCode(), statuscode);
	}

	@Then("^\"([^\"]*)\" is \"([^\"]*)\"$")
	public void is(String sucess, String value) throws Throwable {
		String success = td1.getJsonpath(reswhen, "success");
		assertEquals(success, value);
	}

}
