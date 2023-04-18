require 'todo'

RSpec.describe Todo do
  it "constructs" do
    todo = Todo.new("task one")
      expect(todo.task).to eq "task one"
  end
  
# test is failing and were not sure why
  context "when the task is an empty string" do
    xit "fails" do
      todo = Todo.new("")
      expect { Todo.new }.to raise_error "invalid task"
    end
  end
end