class QuestionsController < ApplicationController
  def ask
    # Get question from the view
  end

  def answer
    # Get the answer from the view
    @question = params[:answer]
    puts @question
    @answer = if @question.end_with?('?')
                'Silly question, get dressed and go to work!'
              elsif @question == 'I am going to work'
                'Great!'
              else
                "I don't care, get dressed and go to work!"
              end
    @answer
  end
end
