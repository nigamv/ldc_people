Given(/^I am on the new part timer page$/) do
  visit eval("new_part_timer_path")
end

Given(/^I am on the part timers page$/) do 
  visit eval("part_timers_path")
end


When(/^I click the link to sort the table by last name$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see all of the part timers listed alphabetically by last name$/) do
  pending # express the regexp above with the code you wish you had
end


When(/add information for a new part timer/) do
  fill_in 'Last name', :with => "Root"
  fill_in 'First name', :with => "Colbert"
  select 'STUDENT WORKER A', :from  => 'Job title'
  select 'trainee', :from  => 'Level'
end

When(/add first and last name and level for a new part timer/) do
  fill_in 'Last name', :with => "Root"
  fill_in 'First name', :with => "Colbert"
  select '--', :from => 'Level'
end

When(/add first and last name and job title for a new part timer/) do
  fill_in 'Last name', :with => "Root"
  fill_in 'First name', :with => "Colbert"
  select '--', :from => 'Job title'
end

When(/click 'Create Part timer'/) do
  click_button 'Create Part timer'
end

Then(/see all of the new information I've entered$/) do
  assert page.has_css?('b', :text => 'Last name:')
  assert page.has_css?('p', :text => 'Root')
  assert page.has_css?('b', :text => 'First name:')
  assert page.has_css?('p', :text => 'Colbert')
end

Then(/some indication that the changes have been saved/) do
  assert page.has_content?("Part timer was successfully created.")
end

When(/^leave 'first name' or 'last name' blank$/) do
  fill_in 'First name', :with => ''
  fill_in 'Last name', :with => ''
end

Then(/^I should see some errors$/) do
  assert page.has_css?('div.field_with_errors')
end

When(/^do not make a selection for 'Job title'$/) do
  select '--', :from => 'Job title'
end

When(/^do not make a selection for 'Level'$/) do
  select '--', :from => 'Level'
end
