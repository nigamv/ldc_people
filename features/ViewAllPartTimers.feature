Feature: View all part-timers

  As a regular user (non-administrator)
  I want to see and interact with all part timers info
  So that I can get an overview of the information
 
  Scenario: sort part timers list
  Given I am on the part timers page
  
  When I click the link to sort the table by last name
  Then I should see all of the part timers listed alphabetically by last name

