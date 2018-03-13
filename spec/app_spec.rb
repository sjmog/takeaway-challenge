require 'app'

RSpec.describe App do
  describe '.run' do
    it 'runs the app' do
      dishes = "Potato: $10\nExtra potato: $14\n"
      expect(STDOUT).to receive(:puts).with(dishes)

      App.run
    end
  end
end