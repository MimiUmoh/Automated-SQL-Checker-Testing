require 'capybara/dsl'

class Question
  include Capybara::DSL
  
  attr_accessor :question_header, :test_answer

  QUESTION_PAGE_H1 = 'h1'
  QUESTION_PAGE_INFO_BTN = 'Info'
  LOGOUT_PAGE_BTN = 'Logout'
  QUESTION_PAGE_SUBMIT_BTN = 'Submit'
  LOG_OUT_BTN_ID = 'Log Out'

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

  def fill_in_question(number, test_answer)
    fill_in("question-#{number}-text", with: test_answer)
  end

  def click_save_question(num)
    click_button("question-#{num}-button")
  end

  def click_log_out_button
    click_link(LOG_OUT_BTN_ID)
  end

  def find_question_field_text(number)
    find(:id, "question-#{number}-text").text
  end
  
end
