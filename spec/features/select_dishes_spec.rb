require 'app'

RSpec.describe 'Selecting a dish' do
  # As a customer
  # So that I can order the meal I want
  # I would like to be able to select some number of several available dishes
  it 'I can have an empty order' do
    mock_output = double(puts: nil)
    
    expect(mock_output).to receive(:puts).with("Your order:\n")

    App.run(mock_output)
  end
end