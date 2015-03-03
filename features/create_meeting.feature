Feature: Create Meeting
Background:
  Given I am logged in

Scenario: User can create a meeting
  When I visit "/users/1/meetings"
  Then I should see "Schedule A Meeting"
  And I type "boring meeting" into "Title"
  And I should
