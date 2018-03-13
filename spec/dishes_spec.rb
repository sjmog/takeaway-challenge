require 'dishes'

RSpec.describe Dishes do
  describe 'DEFAULT' do
    it 'defaults to a list of two dishes: Potato and Extra potato' do
      expected_dishes = [ 
        { name: 'Potato', price: '$10' }, 
        { name: 'Extra potato', price: '$14' } 
      ]
      expect(Dishes::DEFAULT).to eq expected_dishes
    end
  end

  describe '#to_s' do
    it 'prints a list of dishes with prices' do
      dishes = Dishes.new
      expect(dishes.to_s).to eq "Potato: $10\nExtra potato: $14"
    end
  end
end