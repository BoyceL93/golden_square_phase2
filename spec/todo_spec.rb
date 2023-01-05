require 'todo'

RSpec.describe Todo do
    context "given a task" do
        it "returns the task as a string" do
            todo = Todo.new('Water the plants')
            result = todo.task
            expect(result).to eq "Water the plants"
        end
    end

    context "given a task that is incomplete" do
        it "returns false" do
            todo = Todo.new('Make breakfast')
            result = todo.done?
            expect(result).to eq false
        end
    end

    context "given a task that is complete" do
        it "returns true" do
            todo = Todo.new('Make a cuppa')
            result = todo.mark_done!
            expect(result).to eq true
        end
    end
end