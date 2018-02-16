class Todo < ApplicationRecord
    validates title, presence: true, length:{ maximum: 30 }
    validates description, length: { maximum: 100 }
    validates done, presence: true
end
