class Todo < ApplicationRecord
  validates :title, presence: true, length:{ maximum: 30 }
  validates :description, length: { maximum: 100 }

  def done!
    self.done = true
    save
  end

  def undone!
    self.done = false
    save
  end

  def done?
    done
  end
end
