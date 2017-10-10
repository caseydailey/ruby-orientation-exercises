class MagicBall

  ANSWERS = [
    "Outcome does not look likely", 
    "Not now", 
    "Better lock next time",
    "Absolutely"
  ]

  def ask(question)
    raise "Question has invalid format." unless
    is_question_valid? question
    ANSWERS.sample
  end

  private

  def is_question_valid?(question)
    question.is_a? String and question.end_with? "?"
  end

end