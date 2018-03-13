class Order
  def initialize(items = [])
    @items = items
  end

  def add(item)
    @items << item
  end

  def to_s
    @items
      .uniq
      .map { |item| item_with_quantity(item) }
      .join("\n")
  end

  private

  def item_with_quantity(item)
    item_count = @items.count(item)
    return item if item_count == 1
    "#{item} (#{item_count})"
  end
end