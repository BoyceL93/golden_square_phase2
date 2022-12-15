def check_task(tasks)
    todo_list = []
    tasks.each{ |task| 
        if task.include?('#TODO')
            todo_list << task
        end
    }
    return todo_list
end


