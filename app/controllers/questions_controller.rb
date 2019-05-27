class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = coach_answer
  end

  private

  def coach_answer
    if @question.include?('?')
      'Silly question, get dressed and go to work!'
    elsif @question == 'I am going to work'
      'Great!'
    else
      'I dont care, get dressed and go to work!'
    end
  end
end
