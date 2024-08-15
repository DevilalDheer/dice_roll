class DiceRoll
  attr_accessor :sides, :number, :roll

  def initialize(sides=6, number=1)
    @sides  = sides
    @number = number
  end

  def roll
    rand(1..@sides)
  end

  def roll_dice_with_number()
    roll_list = []
    @number.times do
      roll_list << roll
    end
    value = 0
    roll_list.each do |roll_item|
      value = value + roll_item
    end
    value
  end

  def result
    @value = roll_dice_with_number()
    puts "Rolling dice #{@number} - #{@sides} sides value is #{@value}"
  end
end