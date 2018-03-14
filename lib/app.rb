require_relative './menu'
require_relative './order'

class App
  def self.run(output = STDOUT, input = STDIN, menu = Menu.new, order = Order.new)
    output.print("#{menu}\n")

    while true
      item = input.gets.chomp
      break if item == 'Done'
      if menu.include?(item)
        order.add(item)
      else
        output.print("#{item} is not on the menu.")
      end
    end

    output.print("Your order:\n#{order}")
  end
end