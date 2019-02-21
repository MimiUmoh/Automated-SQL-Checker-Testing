Before do
  Dotenv.load('.env')
  @sql_automated_checker = SqlAutomatedCheckerTesting.new
  @email = ENV['EMAIL']
  @password = ENV['PASSWORD']
  @name = ENV['NAME']
  @sql_automated_checker.index.visit_index
end

After('@clear_submitted_question_database') do
  @sql_automated_checker.db_connection.clear_data(3)
end

After('@log_out') do
  @sql_automated_checker.question.click_log_out_button
  @sql_automated_checker.db_connection.clear_data(3)
end
