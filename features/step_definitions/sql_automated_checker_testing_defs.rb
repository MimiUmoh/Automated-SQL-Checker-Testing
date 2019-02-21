Given("I am on the index page") do
  @sql_automated_checker.index.visit_index
  expect(@sql_automated_checker.index.find_header).to eq('SQL Assesment')
end

When("I click on the student button") do
  @sql_automated_checker.index.click_student
end

Then("I should be navigated to the student login page") do
  expect(@sql_automated_checker.student_login.find_header).to eq('Student Login')
end

Given("I am on the login page") do
  @sql_automated_checker.index.click_student
  expect(@sql_automated_checker.student_login.find_header).to eq('Student Login')
end

When("I enter valid credentials") do
  @sql_automated_checker.student_login.fill_in_email(@email)
  @sql_automated_checker.student_login.fill_in_password(@password)
  @sql_automated_checker.student_login.click_student_login
end

Then("I should be navigated to the questions page") do
  expect(@sql_automated_checker.question.find_question_header).to eq(@sql_automated_checker.question.question_header)
end

When("I press the back button on the login page") do
  @sql_automated_checker.student_login.click_back_button
end

Then("I should be directed to the index page") do
  @sql_automated_checker.index.find_header
end

Given("I am logged in") do
  @sql_automated_checker.index.click_student
  @sql_automated_checker.student_login.fill_in_email(@email)
  @sql_automated_checker.student_login.fill_in_password(@password)
  @sql_automated_checker.student_login.click_student_login
end

Given("I am on the questions page") do
  expect(@sql_automated_checker.question.find_question_header).to eq(@sql_automated_checker.question.question_header)
end

When("I click on the info button") do
  @sql_automated_checker.question.click_info_button
end

Then("I should be directed to the info page") do
  expect(@sql_automated_checker.student_instruction.find_info_page).to eq(@sql_automated_checker.student_instruction.find_info_page)
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
  @sql_automated_checker.question.click_logout_button
end

Then("I should be directed to the login page") do
  expect(@sql_automated_checker.index.find_header).to eq(@sql_automated_checker.index.index_header)
end

When("I click the submit button") do
  @sql_automated_checker.question.click_question_page_submit_button
end

Then("I should be directed to the score page") do
  expect(@sql_automated_checker.score.find_score_page).to eq(@sql_automated_checker.score.score_header)
end

Given("I am on the score page") do
  @sql_automated_checker.question.click_question_page_submit_button
  expect(@sql_automated_checker.score.find_score_page).to eq(@sql_automated_checker.score.score_header)
end
When("I click on the log out button") do
  @sql_automated_checker.score.click_logout_button
end

Given("I enter the valid credentials") do
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

When("I save each answer") do
  fill_in_question_one()
end

When("I re-log") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should be able to see saved answers in each field") do
  pending # Write code here that turns the phrase above into concrete actions
end
