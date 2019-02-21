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
  @sql_automated_checker.question.click_info_button
  expect(@sql_automated_checker.student_instruction.find_info_page).to eq 'HOW TO USE'
end

When("I click the back button on the info page") do
  @sql_automated_checker.student_instruction.click_info_page_back_button
end

Then("I should be directed back to the questions page") do
  expect(@sql_automated_checker.question.find_question_header).to eq(@sql_automated_checker.question.question_header)
end

When("I click the log out button") do
  @sql_automated_checker.question.click_log_out_button
end

Then("I should be directed to the login page") do
  expect(@sql_automated_checker.index.find_header).to eq(@sql_automated_checker.student_login.find_header)
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
  @sql_automated_checker.question.click_log_out_button
end

Then("I should see the corresponding details for the current student") do
  expect(@sql_automated_checker.score.find_student_name).to eq(@name)
end

Given("I have completed the test") do
  @sql_automated_checker.index.click_student
  @sql_automated_checker.student_login.fill_in_email(@email)
  @sql_automated_checker.student_login.fill_in_password(@password)
  @sql_automated_checker.student_login.click_student_login
  @sql_automated_checker.question.click_question_page_submit_button
  @sql_automated_checker.question.click_log_out_button
end

When("I login") do
  @sql_automated_checker.student_login.fill_in_email(@email)
  @sql_automated_checker.student_login.fill_in_password(@password)
  @sql_automated_checker.student_login.click_student_login
  @sql_automated_checker.question.click_question_page_submit_button
end

When("I save each answer") do
  @sql_automated_checker.question.fill_in_question(1, @sql_automated_checker.question.test_answer)
  @sql_automated_checker.question.click_save_question(1)
  @sql_automated_checker.question.fill_in_question(2, @sql_automated_checker.question.test_answer)
  @sql_automated_checker.question.click_save_question(2)
  @sql_automated_checker.question.fill_in_question(3, @sql_automated_checker.question.test_answer)
  @sql_automated_checker.question.click_save_question(3)
  @sql_automated_checker.question.fill_in_question(4, @sql_automated_checker.question.test_answer)
  @sql_automated_checker.question.click_save_question(4)
  @sql_automated_checker.question.fill_in_question(5, @sql_automated_checker.question.test_answer)
  @sql_automated_checker.question.click_save_question(5)
  @sql_automated_checker.question.fill_in_question(6, @sql_automated_checker.question.test_answer)
  @sql_automated_checker.question.click_save_question(6)
  @sql_automated_checker.question.fill_in_question(7, @sql_automated_checker.question.test_answer)
  @sql_automated_checker.question.click_save_question(7)
  @sql_automated_checker.question.fill_in_question(8, @sql_automated_checker.question.test_answer)
  @sql_automated_checker.question.click_save_question(8)
  
end

When("I re-log") do
  @sql_automated_checker.question.click_log_out_button
  @sql_automated_checker.student_login.fill_in_email(@email)
  @sql_automated_checker.student_login.fill_in_password(@password)
  @sql_automated_checker.student_login.click_student_login
end

Then("I should be able to see saved answers in each field") do
  expect(p @sql_automated_checker.question.find_question_field_text(1)).to eq(@sql_automated_checker.question.test_answer)
  expect(@sql_automated_checker.question.find_question_field_text(2)).to eq(@sql_automated_checker.question.test_answer)
  expect(@sql_automated_checker.question.find_question_field_text(3)).to eq(@sql_automated_checker.question.test_answer)
  expect(@sql_automated_checker.question.find_question_field_text(4)).to eq(@sql_automated_checker.question.test_answer)
  expect(@sql_automated_checker.question.find_question_field_text(5)).to eq(@sql_automated_checker.question.test_answer)
  expect(@sql_automated_checker.question.find_question_field_text(6)).to eq(@sql_automated_checker.question.test_answer)
  expect(@sql_automated_checker.question.find_question_field_text(7)).to eq(@sql_automated_checker.question.test_answer)
  expect(@sql_automated_checker.question.find_question_field_text(8)).to eq(@sql_automated_checker.question.test_answer)
end
