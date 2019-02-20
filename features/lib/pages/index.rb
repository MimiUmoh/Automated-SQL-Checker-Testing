require 'capybara/dsl'

class Index
  include Capybara::DSL

  ADMIN_NAME_BTN = 'Admin'
  STUDENT_NAME_BTN = 'Student'
  SQL_ASSESSMENT_H1 = 'h1'

  def click_admin
    click_button(ADMIN_NAME_BTN)
  end

  def click_student
    click_button(STUDENT_NAME_BTN)
  end

  def find_header
    find(:css, SQL_ASSESSMENT_H1).text
  end
  
end
