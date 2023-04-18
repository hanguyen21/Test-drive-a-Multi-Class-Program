class Todo
  def initialize(task)
    fail "invalid task" if task == ""
    @task = task
  end

  def task
    return @task
  end

  def mark_done!
    # Marks the todo as done
    # Returns nothing
  end

  def done?
    # Returns true if the task is done
    # Otherwise, false
  end
end