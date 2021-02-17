Feature: Login page feature

Scenario: Login page title
Given user is on login page
When user gets the title of the page
Then page title should be "Login - My Store"

Scenario: Forgot Password link
Given user is on login page
Then forgot your password link should be displayed

Scenario: Login with correct credentials
Given user is on login page
When user enters username "keshavreddig@gmail.com"
And user enters password "Gameofthrones8"
And user clicks on Login button
Then user gets the title of the page
And page title should be "My account - My Store"


Scenario Outline: Login with multiple users
Given user is on login page
When user enters username "<username>"
And user enters password "<password>"
And user clicks on Login button
Then user gets the title of the page
And page title should be "My account - My Store"

Examples:
|	username 		 						| 	password 				|
| keshavreddig@gmail.com	|		Gameofthrones8	|
|	deluxeqa@gmail.com			|		Gameofthrones8	|
|	automation49@gmail.com	|		Gameofthrones8	|	
