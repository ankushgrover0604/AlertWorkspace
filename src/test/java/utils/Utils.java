package utils;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintStream;
import java.util.Properties;

import io.restassured.builder.RequestSpecBuilder;
import io.restassured.filter.log.RequestLoggingFilter;
import io.restassured.filter.log.ResponseLoggingFilter;
import io.restassured.http.ContentType;
import io.restassured.specification.RequestSpecification;

public class Utils {
	static RequestSpecification res;

	public RequestSpecification requestSpecification() throws IOException {

		if (res == null) {
			PrintStream log = new PrintStream(new FileOutputStream("logging.txt"));
			res = new RequestSpecBuilder().setBaseUri(propertiesFile("url")).addQueryParam("key", "qaclick123")
					.addFilter(RequestLoggingFilter.logRequestTo(log))
					.addFilter(ResponseLoggingFilter.logResponseTo(log)).setContentType(ContentType.JSON).build();
			return res;
		}
		return res;
	}

	public String propertiesFile(String key) throws IOException {

		Properties prop = new Properties();
		FileInputStream fis = new FileInputStream(
				"C:\\Users\\ankush.grover\\eclipse-workspace\\alertWorkspaceapitesting\\src\\test\\java\\utils\\Utilities.properties");
		prop.load(fis);
		return prop.getProperty(key);

	}

}
