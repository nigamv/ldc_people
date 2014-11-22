Feature: Add new part-timers

  As a regular user (non-administrator)
  I want to add a new part timer to the DB
  So that they can be included in query results
 
  Scenario: successful addition
  Given I am on the new part timer page
  
  When I add information for a new part timer
  And click 'Create Part timer'
  
  Then I should see all of the new information I've entered
  And some indication that the changes have been saved

  Scenario: missing name element
  Given I am on the new part timer page

  When I add information for a new part timer
  But leave 'first name' or 'last name' blank
  And click 'Create Part timer'
  Then I should see some errors 

  Scenario: no job title selection
  Given I am on the new part timer page

  When I add first and last name and level for a new part timer
  And do not make a selection for 'Job title'
  And click 'Create Part timer'
  Then I should see some errors 
  
  Scenario: no level selection
  Given I am on the new part timer page

  When I add first and last name and job title for a new part timer
  And do not make a selection for 'Level'
  And click 'Create Part timer'
  Then I should see some errors 
