require 'capybara/dsl'

class Question
  include Capybara::DSL
  
  # Xpath to be changed when questions page has been fixed
  QUESTION_ONE_FIELD_INPUT_ID = '/html/body/div/div/div[2]/div[2]/div[1]/div[2]/form/div/label[2]'

  def find_question_one
    find(:xpath, QUESTION_ONE_FIELD_INPUT_ID).text
  end
end