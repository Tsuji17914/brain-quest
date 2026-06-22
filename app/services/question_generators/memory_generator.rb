module QuestionGenerators
  class MemoryGenerator
    LENGTHS = { easy: 4, normal: 6, hard: 8 }.freeze

    def self.call(difficulty)
      new(difficulty).generate
    end

    def initialize(difficulty)
      @difficulty = difficulty.to_sym
    end

    def generate
      length = LENGTHS[@difficulty]
      sequence = Array.new(length) { rand(1..9) }
      answer = sequence.join(" ")
      {
        "question" => "次の数列を覚えてください",
        "sequence" => sequence,
        "answer" => answer,
        "hint" => "最初の数字から順に入力しよう"
      }
    end
  end
end
