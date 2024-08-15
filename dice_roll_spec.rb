require_relative 'dice_roll'
RSpec.describe DiceRoll do
    before do
      @dice = DiceRoll.new(6,1)
    end

    it 'Dice sides equal to 6' do
        expect(@dice.sides).to eq(6)
    end

    it 'Number of Dice equal to 1' do
        expect(@dice.number).to eq(1)
    end

    it 'Dice roll should return an integer value' do
        expect(@dice.roll).to be_an(Integer)
    end

    it 'Dice roll value cannot be nil' do
        expect(@dice.roll).not_to eq(nil)
    end

    it 'Dice roll should return an valu ebetween 1 and 6' do
        result = @dice.roll
        expect(result).to be_between(1, 6).inclusive
    end
end