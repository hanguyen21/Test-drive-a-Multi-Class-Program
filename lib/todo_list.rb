class TodoList
  def initialize
    @todo_list = []
  end

  def add(todo) 
    @todo_list << todo
  end

  def incomplete
    return @todo_list.reject{ |todo| todo.done? }
  end

  def complete
    return @todo_list.filter{ |todo| todo.done? }
  end

  def give_up!
    @todo_list.map {|todo| todo.mark_done! }
  end
end
