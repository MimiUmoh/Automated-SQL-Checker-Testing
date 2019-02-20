require 'capybara/dsl'

class StudentInstruction
  include Capybara::DSL
  
  HOW_TO_USE = 'h1'
  ADMIN_INFO_H2 = 'Admin Info'
  STUDENT_INFO_H2 = 'Student Info'
  HOW_TO_SAVE_H2 = 'How to Save'
  BACK_BTN = 'Back'

  def find_student_instruction_header
    find(:css, HOW_TO_USE).text
  end

  def find_admin_info
    find(ADMIN_INFO_H2).text
  end

  def find_student_info
    find(STUDENT_INFO_H2).text
  end

  def find_how_to_save
    find(HOW_TO_SAVE_H2).text
  end

  def click_student
    click_button(BACK_BTN)
  end
end