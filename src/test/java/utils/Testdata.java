package utils;
import io.restassured.path.json.JsonPath;
import io.restassured.response.Response;

public class Testdata {

	public String convert_to_string(String response, String responseKey) {

		JsonPath js = new JsonPath(response); // for parsing Json
		String responsekeydata = js.getString(responseKey);
		return responsekeydata;

	}

	public String getJsonpath(Response reswhen, String Key) {
		String responseString = reswhen.asString();
		JsonPath js = new JsonPath(responseString);
		return js.get(Key).toString();

	}

}
