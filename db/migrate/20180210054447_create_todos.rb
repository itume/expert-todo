class CreateTodos < ActiveRecord::Migration[5.1]
  def change
    create_table :todos do |t|
      t.string :title, null: false
      t.string :description, null: false, default: ""
      t.references :user, foreign_key: true
      t.date :expire_at, null: true
      t.boolean :done, null: false, default: false
      t.timestamps
    end
  end
end
