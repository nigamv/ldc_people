Given(/^I'm on the new (.*) page$/) do |thing|
  visit eval("new_#{thing}_path")
end

When(/add information for a new part timer/) do
  fill_in 'Last name', :with => "Root"
  fill_in 'First name', :with => "Colbert"
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
