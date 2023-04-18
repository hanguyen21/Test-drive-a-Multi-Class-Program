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

    it "shows task as completed when mark done" do
      todo_list = TodoList.new
      todo1 = Todo.new("walk the dog")
      todo_list.add(todo1)
      todo1.mark_done!
      expect(todo_list.complete).to eq [todo1]
    end 

  end

context "given a mixed list todo" do 
  it "return the completed todo" do 

  end

end



end