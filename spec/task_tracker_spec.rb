require 'task_tracker'

RSpec.describe "task_tracker method" do
    context "Given an array of tasks" do
        it "returns a list of tasks to do today" do
            task_list = ['#TODO water plants', '#TODO washing', 'make lasagne', 'play rdr2', '#TODO make gingerbread']
            result = check_task(task_list)
            expect(result).to eq ['#TODO water plants', '#TODO washing', '#TODO make gingerbread']
        end
    end
end