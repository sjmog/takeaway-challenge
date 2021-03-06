class Menu
  DEFAULT = [ 
    { name: 'Potato', price: '$10' }, 
    { name: 'Extra potato', price: '$14' } 
  ]

  def initialize(dishes = DEFAULT)
    @dishes = dishes
  end

  def to_s
    @dishes.map { |dish| "#{dish[:name]}: #{dish[:price]}" }.join("\n")
  end

  def include?(dish_name)
    @dishes.map { |dish| dish[:name] }.include? dish_name
  end
end