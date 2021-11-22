# frozen_string_literal: true

# Questions Controller
class QuestionsController < ApplicationController
  def ask
    # ask handler
  end

  def answer
    @question = params[:question]
    if @question == 'I am going to work'
      @answer = 'Great!'
    else
      @answer = "I don't care, get dressed and go to work!"
      @answer = 'Silly question, get dressed and go to work!' if @question.include? '?'
    end
  end
end
