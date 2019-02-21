require 'capybara/dsl'

class Score
  include Capybara::DSL
  
  attr_accessor :score_header

  SCORE_PAGE_H3 = '.result_grey_box h3'
  SCORE_LOGOUT_BTN = 'Logout'
  STUDENT_NAME_ID = 'student-name'

  def initialize
    @score_header = 'Score:'
  end

  def find_score_page
    find(:css, SCORE_PAGE_H3).text
  end

  def click_logout_button
    click_button(SCORE_LOGOUT_BTN)
  end

  def find_student_name
    find(:id, STUDENT_NAME_ID).text
  end

end
