Feature: Add new part-timers

  As a regular user (non-administrator)
  I want to add a new part timer to the DB
  So that can include them in query results
 
  Scenario: successful addition
  Given I am on the new part timer page
  
  When I add information for a new part timer
  And click 'Create Part timer'
  Then I should see all of the new information I've entered
  And some indication that the changes have been saved
    
