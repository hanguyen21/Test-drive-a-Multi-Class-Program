require 'todo'

RSpec.describe Todo do
  it "constructs" do
    todo = Todo.new("task one")
      expect(todo.task).to eq "task one"
  end
  
  context "when the task is an empty string" do
    it "fails" do
      expect{ Todo.new("") }.to raise_error "invalid task"
    end
  end
end