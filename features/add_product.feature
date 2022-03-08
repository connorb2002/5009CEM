Feature: Login
As a user
I want to be able to log in to the admin account so I can create orders

@login
Scenario: Login
	Given I am on the "Login" page
	When I click on the login button to submit the form
		And I have put in both the correct username and password
	Then I should be able to see the "Admin" page
	But I should not be able to see the home page



Feature: Order button
As an Admin 
I want to to be able to see certain elements which only my account can see

@add order
Scenario: Visiblity of "Admin" page
	Given I am on the "Home" page
	When I navigate the "Home" page
		And I am not logged in 
	Then I should not be able to see the "Admin" page
	But I should be able to see the "Home" page



Feature: Add an order 
As an admin
I want to be able to add a new order so customers can see which orders are available

@add order
Scenario: Add order 
	Given I am on the "Admin" page
	When I click on the "Add product" button
		And I am logged in 
	Then I should be able to make a new order and it's info including a picture and this can be seen by either running a database query or an API call
	But I should not be able to see the items which are being sold