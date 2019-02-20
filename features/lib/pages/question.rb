require 'capybara/dsl'

class Question
  include Capybara::DSL

  attr_accessor :question_one_text, :question_header
  
  # Xpath to be changed when questions page has been fixed
  QUESTION_ONE_FIELD_INPUT_ID = '/html/body/div/div/div[2]/div[2]/div[1]/div[2]/form/div/label[2]'
  INFO_BTN = 'Info'
  QUESTION_PAGE_H1 = 'h1'

  def initialize
    @question_one_text = 'Write a query that lists all Customers in either Paris or London. Include Customer ID, Company Name and all address fields.'
    @question_header = 'Questions'
  end
  
  def find_question_header
    find(:css, QUESTION_PAGE_H1).text
  end

  def click_info_button
    click_button(INFO_BTN)
  end

end