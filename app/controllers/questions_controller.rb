# frozen_string_literal: true

class QuestionsController < ApplicationController
  def ask; end

  def answer
    @coach_answer = coach_answer(params[:question])
  end
end

def coach_answer(your_message)
  if your_message.include?('?')
    'Silly question, get dressed and go to work!'
  elsif your_message == 'I am going to work right now!'
    ''
  else
    "I don\'t care, get dressed and go to work!"
  end
end
