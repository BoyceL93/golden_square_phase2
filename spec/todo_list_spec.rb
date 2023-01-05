require 'todo_list'

RSpec.describe TodoList do
    context "given task" do
        it "adds task to todo list" do
            todos = TodoList.new
            result = todos.add('cook dinner')
            expect(result).to eq ['cook dinner']
        end
    end
    
    context "asked for outstanding tasks" do
        it "returns list of incomplete tasks" do
            todos = TodoList.new
            todos.add('feed the cat')
            todos.add('make bread')
            result = todos.incomplete
            expect(result).to eq ['feed the cat', 'make bread']
        end
    end

    context "Asked for list of completed tasks" do
        it "returns complete task list" do
            todos = TodoList.new
            result = todos.complete
            expect(result).to eq []
        end
    end

    context "Given up" do
        it "marks all todos as complete" do
            todos = TodoList.new
            todos.add('feed the cat')
            todos.add('make bread')
            result = todos.give_up!
            expect(result).to eq ['feed the cat', 'make bread']
        end
    end

    context "Given up" do
        it "marks all todos as complete and empties todo list array" do
            todos = TodoList.new
            todos.add('feed the cat')
            todos.add('make bread')
            todos.give_up!
            result = todos.incomplete
            expect(result).to eq []
        end
    end
end



