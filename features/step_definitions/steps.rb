Given(/^I'm on the new (.*) page$/) do |thing|
  visit eval("new_#{thing}_path")
end

When(/^I add information for a new part timer$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^save the results$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see all of the new information I've entered$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^the message "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end
