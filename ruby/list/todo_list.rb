class TodoList

  attr_reader :get_items

  def initialize(get_items)
    @get_items = get_items
  end

  def add_item(item)
    @get_items << item
  end

  def delete_item(item)
    @get_items.delete(item)
  end
end