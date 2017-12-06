class Player
  attr_reader :name
  attr_reader :life

  def initialize(name)
    @name = name
    @life = @total_lives = 3
  end

  def lose_life
    @life -= 1
  end

  def stats
    "#{@name}: #{@life}/#{@total_lives}"
  end
  
end