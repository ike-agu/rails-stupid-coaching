class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:answer]
    if @question.end_with?'?'
      @coach_answer = 'Silly question, get dressed and go to work!'
    elsif @question == 'I am going to work'
      @coach_answer = 'great!'
    else
      @coach_answer = 'I don\'t care, get dress and go to work'
    end
  end
end
