class Tasklist
    def initialize
        @all_tasks = []
    end
    def add_task(task)
        if @all_tasks.include?(task)
            return "This task already exists"
        else
            return @all_tasks << task
        end
    end
    def remove_task(completed_task)
        if @all_tasks.include?(completed_task)
            @all_tasks.delete(completed_task)
            return @all_tasks
        else
            return "This task does not exist"
        end
    end
end