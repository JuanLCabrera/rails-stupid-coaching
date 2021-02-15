class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @your_message = params[:question]
    if @your_message == "I am going to work!"
      @answer = "Great!"
    elsif @your_message.end_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
