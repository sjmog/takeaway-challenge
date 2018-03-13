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
end