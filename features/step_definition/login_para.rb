
require 'selenium-webdriver'
require 'pry'
driver = Selenium::WebDriver.for :chrome

Given (/^I am on paypal website$/) do 
	driver = Selenium::WebDriver.for :chrome
	driver.navigate.to "https://www.paypal.com/us/home"	
end

And (/^I should click the log in button$/) do 
	driver.find_element(:id,"ul-btn").click	
end

	And (/^I enter (.*?) and (.*?)$/) do |user1,pass1| 
		driver.find_element(:id,"email").send_keys(user1)
		sleep 2
		driver.find_element(:id,"btnNext").click
		sleep 2
		driver.find_element(:id,"password").send_keys(pass1)
		sleep 2		
	end
	
	When (/^I click login button$/) do 
		driver.find_element(:id,"btnLogin").click
		sleep 2		
	end

And (/^I can able to logout$/) do 
		x = driver.find_element(:id,"header-logout").click
		puts x
		sleep 2		
	end
	
	And (/^I should close the browser$/) do 
		driver.quit
		driver.close
	end
