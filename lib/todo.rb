class Todo
  def initialize(task)
    @task = task
    @status = "incomplete"
  end

  def task
    return @task
  end

  def mark_done!
    @status = "complete"
  end

  def done?
    if @status == "complete"
      return true 
    else
     return false
    end
  end
end