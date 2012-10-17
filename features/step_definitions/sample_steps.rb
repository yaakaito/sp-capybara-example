Given /^I visit website$/ do
  visit "/"
end

Then /^I should see test "(.*?)"$/ do |arg1|
  page.should have_content   arg1
end


