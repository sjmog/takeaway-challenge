require 'app'

RSpec.describe App do
  describe '.run' do
    it 'runs the app' do
      mock_output = double(puts: nil)
      dishes = "Potato: $10\nExtra potato: $14\n"
      expect(mock_output).to receive(:puts).with(dishes)

      App.run(mock_output)
    end
  end
end