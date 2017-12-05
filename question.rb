class Question
  attr_reader :first_num
  attr_reader :second_num
  attr_reader :answer

  def initialize
    @first_num = random_num
    @second_num = random_num
    @answer = sum
  end

  def random_num
    prng = Random.new
    prng.rand(1..20)
  end

  def sum
    @first_num + @second_num
  end
end