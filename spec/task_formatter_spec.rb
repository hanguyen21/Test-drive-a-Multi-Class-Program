require "task_formatter"

describe TaskFormatter do
  context "when given a task that is incomplete" do
    it "returns the task formatted in the correct way" do
      task_formatter = TaskFormatter.new
      task = double :task
      expect(task_formatter.format).to eq task
    end
  end
end