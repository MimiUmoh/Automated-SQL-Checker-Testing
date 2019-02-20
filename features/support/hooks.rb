Before do
  @sql_automated_checker = SqlAutomatedCheckerTesting.new
  @sql_automated_checker.index.visit_index
end