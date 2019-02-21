require 'capybara/dsl'

class StudentInstruction
  include Capybara::DSL
  
  INFO_PAGE_H1 = 'h1'
  INFO_PAGE_BACK_BTN = 'Back'

  def find_info_page
    find(INFO_PAGE_H1).text
  end

  def click_info_page_back_button
    click_button(INFO_PAGE_BACK_BTN)
  end

end
