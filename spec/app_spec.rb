require 'app'

RSpec.describe App do
  describe '.run' do
    let(:mock_output) { double(print: nil) }
    let(:mock_input)  { double }

    it 'prints out the menu' do
      menu = double
      mock_user_typing('Done')

      expect(mock_output).to receive(:print).with("#{menu}\n")

      App.run(mock_output, mock_input, menu)
    end

    it 'inputs menu items into an order' do
      menu = double(include?: true)
      order = double
      mock_user_typing('A menu item', 'Done')

      expect(order).to receive(:add).with('A menu item')

      App.run(mock_output, mock_input, menu, order)
    end

    it 'prints an output of the order' do
      menu = double(include?: true)
      order = double(add: nil, to_s: 'Potato')
      mock_user_typing('Potato', 'Done')

      expect(mock_output).to receive(:print).with("Your order:\n#{order}")

      App.run(mock_output, mock_input, menu, order)
    end
  end
end