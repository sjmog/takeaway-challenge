class App
  def self.run(output = STDOUT, input = STDIN)
    output.print("Potato: $10\nExtra potato: $14\n")

    order = Order.new

    while true
      item = input.gets.chomp
      break if item == 'Done'
      order.add(item)
    end

    output.print("Your order:\n#{order}")
  end
end