class CoachingController < ApplicationController
  def answer
    @question = params[:query]

    @answer = coach_answer_enhanced(@question)
  end

  def ask
  end

  def coach_answer(your_message)
    if your_message == "I am going to work right now!"
      ""
    elsif your_message.include?("?")
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
    if your_message == "I AM GOING TO WORK RIGHT NOW!"
      ""
    elsif  your_message.include?("?")
      "I can feel your motivation! " + coach_answer(your_message)
    else
      "I can feel your motivation! " + coach_answer(your_message)
    end
  end

end
