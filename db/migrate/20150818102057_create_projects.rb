class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :title
      t.string :picture
      t.text :presentation
      t.integer :objective
      t.text :description

      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :projects, [:user_id, :created_at]
  end
end
