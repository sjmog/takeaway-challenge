require_relative './dishes'
require_relative './order'

class App
  def self.run(output = STDOUT, input = STDIN, dishes = Dishes.new)
    output.print("#{dishes}\n")

    order = Order.new

    while true
      item = input.gets.chomp
      break if item == 'Done'
      order.add(item)
    end

    output.print("Your order:\n#{order}")
  end
end