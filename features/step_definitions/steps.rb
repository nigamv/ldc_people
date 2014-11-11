Given(/^I'm on the new (.*) page$/) do |thing|
  visit eval("new_#{thing}_path")
end

When(/add information for a new part timer/) do
  fill_in 'Last name', :with => "Root"
  fill_in 'First name', :with => "Colbert"
  fill_in 'Job title', :with => "STUDENT WORKER A"
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

When(/^do not provide 'STUDENT WORKER A' or 'TEMP EXTRA PERSON' as values for 'Job title'$/) do
  fill_in 'Job title', :with => 'Big papa'
end
