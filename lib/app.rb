require_relative './dishes'
require_relative './order'

class App
  def self.run(output = STDOUT, input = STDIN, dishes = Dishes.new)
    output.print("#{dishes}\n")

    order = Order.new

    while true
      item = input.gets.chomp
      break if item == 'Done'
      if dishes.include?(item)
        order.add(item)
      else
        output.print("#{item} is not on the menu.")
      end
    end

    output.print("Your order:\n#{order}")
  end
end