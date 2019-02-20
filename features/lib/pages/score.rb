require 'capybara/dsl'

class Score
  include Capybara::DSL
  
  attr_accessor :score_header

  SCORE_PAGE_H3 = '.result_grey_box h3'

  def initialize
    @score_header = 'Score:'
  end

  def find_score_page
    find(:css, SCORE_PAGE_H3).text
  end
end