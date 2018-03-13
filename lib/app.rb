class App
  def self.run(output = STDOUT, input = STDIN, dishes = Dishes::DEFAULT)
    output.print(dishes.map { |dish| "#{dish[:name]}: #{dish[:price]}" }.join("\n") + "\n")

    order = Order.new

    while true
      item = input.gets.chomp
      break if item == 'Done'
      order.add(item)
    end

    output.print("Your order:\n#{order}")
  end
end