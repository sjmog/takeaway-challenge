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

  it 'I can add multiple items to an order' do
    mock_user_typing('Potato', 'Potato', 'Done')

    expect(mock_output).to receive(:print).with("Your order:\nPotato (2)")

    App.run(mock_output, mock_input)
  end

  it 'I cannot add an item to the order unless it is on the menu' do
    mock_user_typing('A whole rabbit', 'Done')

    expect(mock_output).to receive(:print).with("A whole rabbit is not on the menu.")
    expect(mock_output).not_to receive(:print).with("Your order:\nA whole rabbit")

    App.run(mock_output, mock_input)
  end
end