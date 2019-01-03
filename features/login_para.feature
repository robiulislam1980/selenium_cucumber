
Feature: Sign in functionality


Scenario Outline: login to paypal website with correct credentials
Given I am on paypal website
And I should click the log in button
And I enter <username> and <password>
When I click login button
And I can able to logout
And I should close the browser

Examples:
|username               |password|
|md.robiul2008@yahoo.com|robiul1980|
|testruby12233@gmail.com|PickCart7|
|robiultest123@yahoo.com|akijatest123|
