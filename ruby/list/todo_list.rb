class TodoList

  attr_reader :get_items

  def initialize(get_items)
    @get_items = get_items
  end
end