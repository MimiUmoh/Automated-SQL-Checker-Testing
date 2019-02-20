require 'capybara/dsl'

class StudentLogin
  include Capybara::DSL
  
  EMAIL_INPUT_FIELD = 'email'
  PASSWORD_INPUT_FIELD = 'password'
  STUDENT_LOGIN_HEADER = 'h1'

  def fill_in_email(email)
    fill_in(EMAIL_INPUT_FIELD, with: email)
  end

  def fill_in_password(password)
    fill_in(PASSWORD_INPUT_FIELD, with: password)
  end

  def find_header
    find(:css, STUDENT_LOGIN_HEADER)
  end

end
