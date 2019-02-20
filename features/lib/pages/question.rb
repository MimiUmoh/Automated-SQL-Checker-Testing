require 'capybara/dsl'

class Question
  include Capybara::DSL
  
  attr_accessor :question_header, :test_answer

  QUESTION_PAGE_H1 = 'h1'
  QUESTION_PAGE_INFO_BTN = 'Info'
  LOGOUT_PAGE_BTN = 'Logout'
  QUESTION_PAGE_SUBMIT_BTN = 'Submit'
  QUESTION_ONE_FIELD_ID = 'question-1-text'
  QUESTION_TWO_FIELD_ID = 'question-2-text'
  QUESTION_THREE_FIELD_ID = 'question-3-text'
  QUESTION_FOUR_FIELD_ID = 'question-4-text'
  QUESTION_FIVE_FIELD_ID = 'question-5-text'
  QUESTION_SIX_FIELD_ID = 'question-6-text'
  QUESTION_SEVEN_FIELD_ID = 'question-7-text'
  QUESTION_EIGHT_FIELD_ID = 'question-8-text'

  def initialize
    @question_header = 'Questions'
    @test_answer = 'This is a test'
  end

  def find_question_header
    find(:css, QUESTION_PAGE_H1).text
  end

  def click_info_button
    click_link(QUESTION_PAGE_INFO_BTN)
  end

  def click_logout_button
    click_button(LOGOUT_PAGE_BTN)
  end

  def click_question_page_submit_button
    click_link(QUESTION_PAGE_SUBMIT_BTN)
  end

  def fill_in_question_one(test_answer)
    fill_in(QUESTION_ONE_FIELD_ID, with: test_answer)
  end

end
