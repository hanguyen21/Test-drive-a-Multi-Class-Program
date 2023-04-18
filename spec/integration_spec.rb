require 'todo_list'
require 'todo'

RSpec.describe "todo_list integration" do
  context "given a task" do
    it "returns a list with that task" do
      todo_list = TodoList.new
      todo1 = Todo.new("")
      todo_list.add(todo1)
      expect(todo_list.incomplete).to eq [todo1]
    end
  end
end