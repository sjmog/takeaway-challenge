require 'app'

RSpec.describe 'Seeing a list of dishes' do
  # As a customer
  # So that I can check if I want to order something
  # I would like to see a list of dishes with prices

  let(:mock_output) { double(print: nil) }
  let(:mock_input)  { double }

  it 'I can ask for a list of dishes with prices' do
    dishes = "Potato: $10\nExtra potato: $14\n"
    mock_user_typing('Done')

    expect(mock_output).to receive(:print).with(dishes)

    App.run(mock_output, mock_input)
  end
end