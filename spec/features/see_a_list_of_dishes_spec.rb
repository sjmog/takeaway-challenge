require 'app'

RSpec.describe 'Seeing a list of dishes' do
  # As a customer
  # So that I can check if I want to order something
  # I would like to see a list of dishes with prices
  it 'I can ask for a list of dishes with prices' do
    dishes = "Potato: $10\nExtra potato: $14\n"
    expect(STDOUT).to receive(:puts).with(dishes)

    App.run
  end
end