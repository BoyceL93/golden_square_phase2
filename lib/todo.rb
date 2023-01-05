class Todo
    def initialize(task) 
      @task = task
      @task_completed = false
    end
  
    def task
      return @task
    end
  
    def mark_done!
      @task_completed = true
    end
  
    def done?
      return @task_completed
    end
end

