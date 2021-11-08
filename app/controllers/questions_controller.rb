class QuestionsController < ApplicationController

  def ask
  end

  def answer
    if params[:questions].present?
      if params[:questions].include?("?")
        @answer = "Silly question, get dressed and go to work"
      elsif params[:questions] == "i am going to work"
        @answer = "Great!"
      else
        @answer = "I don't care, get dressed and go to work!"
      end
    end
  end
end
