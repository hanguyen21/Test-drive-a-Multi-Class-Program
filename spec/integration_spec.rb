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

  context "given a mixed list of todos" do 
    it "return the completed todo" do 
      todo_list = TodoList.new
      todo1 = Todo.new("todo1")
      todo2 = Todo.new("todo2")
      todo3 = Todo.new("todo3")
      todo_list.add(todo1)
      todo_list.add(todo2)
      todo_list.add(todo3)
      todo1.mark_done!
      expect(todo_list.complete).to eq [todo1]
      expect(todo_list.incomplete).to eq [todo2, todo3]
    end
  end

  context "given a mixed list of todos" do
    describe "give_up!" do 
      it "marks all uncompleted todos as completed" do 
        todo_list = TodoList.new
        todo1 = Todo.new("todo1")
        todo2 = Todo.new("todo2")
        todo3 = Todo.new("todo3")
        todo_list.add(todo1)
        todo_list.add(todo2)
        todo_list.add(todo3)
        todo1.mark_done!
        todo_list.give_up!
        expect(todo_list.complete).to eq [todo1, todo2, todo3]
      end
    end  
  end
end