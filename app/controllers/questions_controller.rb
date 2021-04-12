class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @great = 'Great!'
    @silly = 'Silly question, get dressed and go to work!'
    @dont_care = "I don't care, get dressed and go to work!"
    @answer = nil

    if params[:answer] == 'I am going to work'
      @answer = @great
    elsif params[:answer].end_with?('?')
      @answer = @silly
    else
      @answer = @dont_care
    end
  end
end
