require 'task_list'

RSpec.describe Tasklist do
    context "When given a new task" do
        it "adds the task to the tasklist" do
            tasklist = Tasklist.new
            result = tasklist.add_task('Feed the cat')
            expect(result).to eq ['Feed the cat']
        end
    end

    context "When given a task that already exists" do
        it "Returns an error message" do
            tasklist = Tasklist.new
            tasklist.add_task('Water the plants')
            result = tasklist.add_task('Water the plants')
            expect(result).to eq "This task already exists"
        end
    end

    context "When given a task that exists" do
        it "removes task from the task list" do
            tasklist = Tasklist.new
            tasklist.add_task('Buy mini-marshmallows')
            result = tasklist.remove_task('Buy mini-marshmallows')
            expect(result).to eq []
        end
    end

    context "When given a task that does not exist" do
        it "Returns an error message" do
            tasklist = Tasklist.new
            result = tasklist.remove_task('Cook parsnips')
            expect(result).to eq "This task does not exist"
        end
    end
end