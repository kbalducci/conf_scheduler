Feature: Create Meeting
Background:
  Given I am logged in

Scenario: User can create a meeting
  When I visit "/users/1/meetings"
  Then I should see "Schedule A Meeting"
  And I type "boring meeting" into "Title"
  And I should select "Building C - Ruby on Rails Classroom"
  And I should select '2015' 'March' '4' '03' '37' for "Start Time"
  And I should select '2015' 'March' '4' '04' '37' for "End Time"
  And I click 'Create Meeting'
  Then I should see "Meeting was successfully created."
