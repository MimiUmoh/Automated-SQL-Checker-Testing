Given("I am on the index page") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click on the student button") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should be navigated to the student login page") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I am on the login page") do
  @sql_automated_checker.index.click_student
  expect(@sql_automated_checker.student_login.find_header).to eq('Student Login')
end

When("I enter valid credentials") do
  @sql_automated_checker.student_login.fill_in_email('admin@spartaglobal.com')
  @sql_automated_checker.student_login.fill_in_password('Password1')
end

Then("I should be navigated to the questions page") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I press the back button on the login page") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should be directed to the index page") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I am logged in") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I am on the questions page") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click on the info button") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should be directed to the info page") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I am on the info page") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click the back button on the info page") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should be directed back to the questions page") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click the log out button") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should be directed to the login page") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click the submit button") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should be directed to the score page") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I am on the score page") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click on the log out button") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I enter valid credentials") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I am on the score page") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should see the corresponding details for the current student") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I have completed the test") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I login") do
  pending # Write code here that turns the phrase above into concrete actions
end
