require 'capybara/dsl'

class Index
  include Capybara::DSL

  attr_accessor :index_header

  ADMIN_NAME_BTN = 'Admin'
  STUDENT_NAME_BTN = 'Student'
  SQL_ASSESSMENT_H1 = 'h1'
  INDEX_URL = 'localhost:3000'

  def initialize
    @index_header = 'SQL Assesment'
  end

  def visit_index
    visit(INDEX_URL)
  end

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
