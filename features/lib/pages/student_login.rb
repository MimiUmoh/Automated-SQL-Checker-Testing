require 'capybara/dsl'

class StudentLogin
  include Capybara::DSL
  
  EMAIL_INPUT_FIELD = 'email'
  PASSWORD_INPUT_FIELD = 'password'
  STUDENT_LOGIN_H1 = 'h1'
  STUDENT_LOGIN_BTN = 'Submit'

  def fill_in_email(email)
    fill_in(EMAIL_INPUT_FIELD, with: email)
  end

  def fill_in_password(password)
    fill_in(PASSWORD_INPUT_FIELD, with: password)
  end

  def find_header
    find(:css, STUDENT_LOGIN_H1).text
  end

  def click_student_login
    click_button(STUDENT_LOGIN_BTN)
  end
end
