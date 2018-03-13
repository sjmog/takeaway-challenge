class App
  def self.run(output = STDOUT, input = STDIN)
    output.print("Potato: $10\nExtra potato: $14\n")

    orders = []

    while true
      order = input.gets.chomp
      break if order == 'Done'
      orders << order
    end

    output.print("Your order:\n#{orders.join("\n")}")
  end
end