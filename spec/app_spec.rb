require 'app'

RSpec.describe App do
  describe '.run' do
    it 'runs the app' do
      mock_output = double(print: nil)
      mock_input = double
      allow(mock_input).to receive_message_chain(:gets, :chomp).and_return 'Done'
      dishes = "Potato: $10\nExtra potato: $14\n"

      expect(mock_output).to receive(:print).with(dishes)

      App.run(mock_output, mock_input)
    end

    it 'prints orders' do
      mock_output = double(print: nil)
      mock_input = double
      allow(mock_input).to receive_message_chain(:gets, :chomp).and_return 'Potato', 'Done'

      expect(mock_output).to receive(:print).with("Your order:\nPotato")

      App.run(mock_output, mock_input)
    end
  end
end