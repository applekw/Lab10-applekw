Then /^I should see a fortune$/ do
  fortune = page.find(".fortune")
  fortune.text.should match /^\n.*\n\s*$/
end


Then /^I should see "([^""]*)"$/ do |arg1|
  sp_fortune = $fortunes[arg1.to_i]
  sp_fortune.text.should match /^\n.*\n\s*$/
end