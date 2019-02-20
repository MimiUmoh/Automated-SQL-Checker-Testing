require 'capybara/dsl'

class StudentInstruction
  include Capybara::DSL
  
  HOW_TO_USE = 'h1'
  ADMIN_INFO = 'Admin Info'
  STUDENT_INFO = 'Student Info'
  HOW_TO_SAVE = 'How to Save'
  BACK_BTN = 'Back'

  def find_student_instruction_header
    find(:css, HOW_TO_USE).text
  end

  def find_admin_info
    find(ADMIN_INFO).text
  end

  def find_student_info
    find(STUDENT_INFO).text
  end

  def find_how_to_save
    find(HOW_TO_SAVE).text
  end

  def click_back_button
    click_button(BACK_BTN)
  end
end