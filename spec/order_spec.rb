require 'order'

RSpec.describe Order do
  describe '#add' do
    it 'adds an item to the order' do
      mock_items = double
      order = Order.new(mock_items)

      expect(mock_items).to receive(:<<).with('Potato')

      order.add('Potato')
    end
  end

  describe '#to_s' do
    it 'returns a list of items in the order' do
      order = Order.new(['Potato', 'Extra potato'])
      expect(order.to_s).to eq "Potato\nExtra potato"
    end

    it 'displays the quantity of items next to their names' do
      order = Order.new(['Potato', 'Potato'])
      expect(order.to_s).to eq "Potato (2)"
    end
  end
end