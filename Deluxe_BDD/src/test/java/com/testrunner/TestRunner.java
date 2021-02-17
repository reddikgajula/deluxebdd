package com.testrunner;

import org.junit.runner.RunWith;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;

@RunWith(Cucumber.class)
@CucumberOptions(
			features = {"src/test/resources/com/parallel"},
			glue = {"com.parallel"},
			plugin = {"pretty",
					"com.aventstack.extentreports.cucumber.adapter.ExtentCucumberAdapter:",
					"timeline:test-output-thread/",
					"json: target/Myreports/report.json",
					"junit: target/Myreports/report.xml"
					},
			dryRun = false,
			monochrome = true			
		)

public class TestRunner {

}
