require_relative 'pages/admin_login'
require_relative 'pages/admin_student_review'
require_relative 'pages/index'
require_relative 'pages/question_one'
require_relative 'pages/question_two'
require_relative 'pages/question_three'
require_relative 'pages/review_question'
require_relative 'pages/score'
require_relative 'pages/student_instruction'
require_relative 'pages/student_login'

class SqlAutomatedCheckerTesting

  def admin_login
    AdminLogin.new
  end

  def admin_student_review
    AdminStudentReview.new
  end

  def index
    Index.new
  end

  def question_one
    QuestionOne.new
  end

  def question_two
    QuestionTwo.new
  end

  def question_three
    QuestionThree.new
  end

  def review_question
    ReviewQuestion.new
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