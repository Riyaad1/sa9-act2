require 'todolist'

RSpec.describe TodoList do
  let(:new_list) { TodoList.new }
  describe "#add" do
    it "adds a todo to the list" do
        new_list.add('Clean')
    end
  end

  describe "#remove" do
    it "removes a todo from the list" do
      new_list.add('Clean')
      new_list.remove('Clean')
    end
  end

  describe "#todos" do
    it "ruturns all todos" do
      new_list.add('Clean')
      puts new_list.todos
    end
  end
end
