require 'todo_list'
require 'todo'

RSpec.describe "Todo list integration" do
    context "given a task" do
        it "adds the task to the todo list" do
            shopping = TodoList.new
            item1 = Todo.new('Bread')
            shopping.add(item1)
            result = shopping.incomplete
            expect(result).to eq [item1]
        end
    end

    context "when we have completed a task" do
        it "marks tasks as complete" do
            shopping = TodoList.new
            item1 = Todo.new('Salami')
            shopping.add(item1)
            item1.mark_done!
            result = item1.done?
            expect(result). to eq true
        end
    end

    context "when we want to know what tasks have been done" do
        it "returns list of completed tasks" do
            chores = TodoList.new
            task1 = Todo.new('Put towels in tumble dryer')
            task2 = Todo.new('Put dark wash on')
            chores.add(task1)
            chores.add(task2)
            chores.give_up!
            result = chores.complete
            expect(result).to eq [task1, task2]
        end
    end
end