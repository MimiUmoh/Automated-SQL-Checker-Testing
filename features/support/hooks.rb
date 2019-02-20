Before do
  Dotenv.load('.env')
  @sql_automated_checker = SqlAutomatedCheckerTesting.new
  @email = ENV['EMAIL']
  @password = ENV['PASSWORD']
  @sql_automated_checker.index.visit_index
end

Before ('@info_page_back_button') do
  @sql_automated_checker.question.click_info_button
end 