module QuestionGenerators
  class CalculationGenerator
    def self.call(difficulty)
      new(difficulty).generate
    end

    def initialize(difficulty)
      @difficulty = difficulty.to_sym
    end

    def generate
      case @difficulty
      when :easy   then easy_question
      when :normal then normal_question
      when :hard   then hard_question
      end
    end

    private

    def easy_question
      a = rand(1..20)
      b = rand(1..20)
      op = [ :+, :- ].sample
      if op == :- && a < b
        a, b = b, a
      end
      answer = a.send(op, b)
      { "question" => "#{a} #{op} #{b} = ?", "answer" => answer.to_s, "hint" => "#{a} と #{b} を#{op == :+ ? '足す' : '引く'}" }
    end

    def normal_question
      a = rand(10..50)
      b = rand(2..9)
      op = [ :*, :+ ].sample
      answer = a.send(op, b)
      op_str = op == :* ? "×" : "+"
      { "question" => "#{a} #{op_str} #{b} = ?", "answer" => answer.to_s, "hint" => "#{op == :* ? '掛け算' : '足し算'}で計算しよう" }
    end

    def hard_question
      a = rand(10..30)
      b = rand(10..20)
      c = rand(1..50)
      answer = a * b - c
      { "question" => "#{a} × #{b} - #{c} = ?", "answer" => answer.to_s, "hint" => "#{a}×#{b} を先に計算しよう" }
    end
  end
end
