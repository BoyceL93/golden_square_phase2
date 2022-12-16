1. Description

> Both of the below in one class

> As a user
> So that I can keep track of my tasks
> I want a program that I can add todo tasks to and see a list of them.

> As a user
> So that I can focus on tasks to complete
> I want to mark tasks as complete and have them disappear from the list.

2. Class interface design

class Tasklist
    def initialize
        # ...
    end
    def add_task(task)
        # task is a string
        # adds task to array
        # throws error if task already exists
    end
    def remove_task(completed_task)
        # completed_task is a string that should match an item in the array that was created in add_task
        # should remove the item from the array
        # should throw an error message if item does not exist in the array
    end
end


3. Examples

tasklist = Tasklist.new
result = tasklist.add_task('Feed the cat')
tasklist.all_tasks => ['Feed the cat']

tasklist = Tasklist.new
tasklist.add_task('Water the plants')
result = tasklist.add_task('Water the plants') => 'some sort of error'

tasklist = Tasklist.new
tasklist.add_task('Buy mini-marshmallows')
result = tasklist.remove_task('Buy mini-marshmallows')

tasklist = Tasklist.new
result = tasklist.remove_task('Cook parsnips')
expect(result).to eq "This task does not exist"
