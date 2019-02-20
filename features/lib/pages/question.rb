require 'capybara/dsl'

class Question
  include Capybara::DSL

  attr_accessor :question_one_text
  
  # Xpath to be changed when questions page has been fixed
  QUESTION_ONE_FIELD_INPUT_ID = '/html/body/div/div/div[2]/div[2]/div[1]/div[2]/form/div/label[2]'
  INFO_BTN = 'Info'

  def initialize
    @question_one_text = 'Write a query that lists all Customers in either Paris or London. Include Customer ID, Company Name and all address fields.'
  end

  def find_question_one
    find(:xpath, QUESTION_ONE_FIELD_INPUT_ID).text
  end

  def click_info_button
    click_button(INFO_BTN)
  end

end