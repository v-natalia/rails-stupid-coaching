class QuestionsController < ApplicationController

  def ask
  end

  def index
    # @questions = QUESTIONS.select { |id, q| q[:question] == @question }
  end
  # The answer.html.erb will display the question you ask your coach
  # as well as his answer.

  def answer
    @question = params[:question]
    if @question == 'I am going to work'
      @answer = 'Great!'
    elsif @question.include? '?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = 'I dont care, get dressed and go to work!'
    end
  end
end
