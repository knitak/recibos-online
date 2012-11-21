Feature: Unsuccessful pesquisa
Scenario: Unknown shop
	Given a user visits the pesquisa page
	When he submits invalid pesquisa information
	Then he should see an error message

Scenario: Successful pesquisa
	Given a user visits the pesquisa page
		And the shop has an account
		And the user submits valid pesquisa information
	Then the shop profile page is shown