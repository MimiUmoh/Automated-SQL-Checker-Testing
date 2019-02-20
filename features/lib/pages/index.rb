require 'capybara/dsl'

class Index
  include Capybara::DSL
  
  ADMIN_NAME_BTN = 'Admin'
  STUDENT_NAME_BTN = 'Student'
  INDEX_URL = 'localhost:3000'

  def visit_index
    visit(INDEX_URL)
  end

  def click_admin
    click_button(ADMIN_NAME_BTN)
  end

  def click_student
    click_button(STUDENT_NAME_BTN)
  end

end