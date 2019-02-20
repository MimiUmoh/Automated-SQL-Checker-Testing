require 'capybara/dsl'

class StudentInstruction
  include Capybara::DSL
  
  INFO_PAGE_H1 = 'h1'

  def find_info_page
    find(:css, INFO_PAGE_H1).text
  end

end
