class Order
  def initialize(items = [])
    @items = items
  end

  def add(item)
    @items << item
  end

  def to_s
    @items.join("\n")
  end
end