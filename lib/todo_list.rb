class TodoList
  def initialize
    @todo_list = []
    @completed_tasks = []
  end

  def add(todo) 
    @todo_list << todo
  end

  def incomplete
    return @todo_list
  end

  def complete
    return @completed_tasks
  end

  def give_up!
    @todo_list.each { |todo|
      @completed_tasks.push(todo) 
    }
    @todo_list = []
    return @completed_tasks
  end
end