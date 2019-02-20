require 'capybara/dsl'

class Score
  include Capybara::DSL
  
  SCORE_PAGE_H3 = '.result_grey_box h3'

  def find_score_page
    find(:css, SCORE_PAGE_H3).text
  end
end