require 'app'

RSpec.describe 'Selecting a dish' do
  # As a customer
  # So that I can order the meal I want
  # I would like to be able to select some number of several available dishes

  let(:mock_output) { double(print: nil) }
  let(:mock_input)  { double }

  it 'I can have an empty order' do
    mock_user_typing('Done')

    expect(mock_output).to receive(:print).with("Your order:\n")

    App.run(mock_output, mock_input)
  end

  it 'I can add an item to an order' do
    mock_user_typing('Potato', 'Done')
    
    expect(mock_output).to receive(:print).with("Your order:\nPotato")

    App.run(mock_output, mock_input)
  end

  private

  def mock_user_typing(*args)
    allow(mock_input).to receive_message_chain(:gets, :chomp).and_return(*args)
  end
end