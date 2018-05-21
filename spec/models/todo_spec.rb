require 'rails_helper'

RSpec.describe Todo, type: :model do
  describe 'done!' do
    it 'タスクが完了状態になること' do
      todo = create(:todo)
      todo.done = false
      todo.done!
      expect(todo.done).to be true
    end
  end
  describe 'undone!' do
    it 'タスクが未完了状態になること' do
      todo = create(:todo)
      todo.done = true
      todo.undone!
      expect(todo.done).to be false
    end
  end
end
