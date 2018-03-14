require 'app'

RSpec.describe 'Seeing a menu' do
  # As a customer
  # So that I can check if I want to order something
  # I would like to see a menu with prices

  let(:mock_output) { double(print: nil) }
  let(:mock_input)  { double }

  it 'I can ask for a menu with prices' do
    menu = Menu.new([
      { name: 'Hunk o cheese', price: '$12' },
      { name: 'Wine', price: '$5' }
    ])
    mock_user_typing('Done')

    expect(mock_output).to receive(:print).with("Hunk o cheese: $12\nWine: $5\n")

    App.run(mock_output, mock_input, menu)
  end

  it 'Defaults to a Potato and an Extra potato' do
    mock_user_typing('Done')

    expect(mock_output).to receive(:print).with("Potato: $10\nExtra potato: $14\n")

    App.run(mock_output, mock_input)
  end
end