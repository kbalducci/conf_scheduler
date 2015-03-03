Feature: User Auth
  In order to use the application
  As a user of the app
  I want to be able to login or create an account
Background:
  Given I am not logged in

Scenario: User must login
  # Given I am not logged in
  When I visit "/rooms"
  Then I should see "Log in"
  And I should see "Sign up"
  And I should see "Forgot your password?"

Scenario: User must have a valid account
  # Given I am not logged in
  When I visit "/users/sign_in"
  And I type "user@example.com" into "Email"
  And I type "password" into "Password"
  And I clck "Log in"
  Then I should see "Invalid email"

Scenario: User can login with a valid account
  # Given I am not logged in
  # And
  Given I have a valid account
  When I visit "/users/sign_in"
  And I type "user@example.com" into "Email"
  And I type "password" into "Password"
  And I clck "Log in"
  Then I should see "Signed in successfully."

Scenario: User can create an account
  # Given I am not logged in
  When I visit "/users/sign_up"
  And I type "user@example.com" into "Email"
  And I type "password" into "Password"
  And I type "password" into "confirmation"
  And I type "Kate" into "First name"
  And I type "Balducci" into "Last name"
  And I pick "red" from "user_fav_color"
  And I click "Sign up"
  Then I should see "You have signed up successfully."


