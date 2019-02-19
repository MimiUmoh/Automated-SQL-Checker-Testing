require_relative 'pages/index'
require_relative 'pages/question'
require_relative 'pages/score'
require_relative 'pages/student_instruction'
require_relative 'pages/student_login'

class SqlAutomatedCheckerTesting

  def index
    Index.new
  end

  def question
    Question.new
  end

  def score
    Score.new
  end

  def student_instruction
    StudentInstruction.new
  end

  def student_login
    StudentLogin.new
  end
  
end
