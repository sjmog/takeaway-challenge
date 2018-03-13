require 'app'

RSpec.describe App do
  describe '.run' do
    let(:mock_output) { double(print: nil) }
    let(:mock_input)  { double }

    it 'runs the app' do
      dishes = "Potato: $10\nExtra potato: $14\n"
      mock_user_typing('Done')

      expect(mock_output).to receive(:print).with(dishes)

      App.run(mock_output, mock_input)
    end

    it 'prints orders' do
      mock_user_typing('Potato', 'Done')

      expect(mock_output).to receive(:print).with("Your order:\nPotato")

      App.run(mock_output, mock_input)
    end
  end

  private

  def mock_user_typing(*args)
    allow(mock_input).to receive_message_chain(:gets, :chomp).and_return(*args)
  end
end