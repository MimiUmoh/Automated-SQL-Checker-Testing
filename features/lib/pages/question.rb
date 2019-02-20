require 'capybara/dsl'

class Question
  include Capybara::DSL
  
  attr_accessor :question_header

  QUESTION_PAGE_H1 = 'h1'

  def initialize
    @question_header = 'Questions'
  end

  def find_question_header
    find(:css, QUESTION_PAGE_H1).text
  end

end
