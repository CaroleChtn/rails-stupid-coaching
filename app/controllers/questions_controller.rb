class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = stupid_coach(@question)
    # param recupere l'input user (ici answer)
  end

  private

  def stupid_coach(string)
    if string == 'i am going to work right now!'
      'Great!'
    elsif string.end_with?('?')
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
