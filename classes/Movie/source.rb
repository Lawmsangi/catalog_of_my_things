class Source
  attr_reader :name, :items

  def initialize(name, _items)
    @id = Random.rand(1...1000)
    @name = name
    @items = []
  end

  def add_item(item)
    @items << item
    item.source = self
  end
end
