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
  QUESTION_ONE_SAVE_BTN_ID = 'question-1-button'
  QUESTION_TWO_SAVE_BTN_ID = 'question-2-button'
  QUESTION_THREE_SAVE_BTN_ID = 'question-3-button'
  QUESTION_FOUR_SAVE_BTN_ID = 'question-4-button'
  QUESTION_FIVE_SAVE_BTN_ID = 'question-5-button'
  QUESTION_SIX_SAVE_BTN_ID = 'question-6-button'
  QUESTION_SEVEN_SAVE_BTN_ID = 'question-7-button'
  QUESTION_EIGHT_SAVE_BTN_ID = 'question-8-button'

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

  def fill_in_question_two(test_answer)
    fill_in(QUESTION_TWO_FIELD_ID, with: test_answer)
  end

  def fill_in_question_three(test_answer)
    fill_in(QUESTION_THREE_FIELD_ID, with: test_answer)
  end

  def fill_in_question_four(test_answer)
    fill_in(QUESTION_FOUR_FIELD_ID, with: test_answer)
  end

  def fill_in_question_five(test_answer)
    fill_in(QUESTION_FIVE_FIELD_ID, with: test_answer)
  end

  def fill_in_question_six(test_answer)
    fill_in(QUESTION_SIX_FIELD_ID, with: test_answer)
  end

  def fill_in_question_seven(test_answer)
    fill_in(QUESTION_SEVEN_FIELD_ID, with: test_answer)
  end

  def fill_in_question_eight(test_answer)
    fill_in(QUESTION_EIGHT_FIELD_ID, with: test_answer)
  end

  def click_save_question_one
    click_button(QUESTION_ONE_SAVE_BTN_ID)
  end

  def click_save_question_two
    click_button(QUESTION_TWO_SAVE_BTN_ID)
  end

  def click_save_question_three
    click_button(QUESTION_THREE_SAVE_BTN_ID)
  end

  def click_save_question_four
    click_button(QUESTION_FOUR_SAVE_BTN_ID)
  end

  def click_save_question_five
    click_button(QUESTION_FIVE_SAVE_BTN_ID)
  end

  def click_save_question_six
    click_button(QUESTION_SIX_SAVE_BTN_ID)
  end

  def click_save_question_seven
    click_button(QUESTION_SEVEN_SAVE_BTN_ID)
  end

  def click_save_question_eight
    click_button(QUESTION_EIGHT_SAVE_BTN_ID)
  end
  
end
