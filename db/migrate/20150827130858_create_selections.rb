class CreateSelections < ActiveRecord::Migration
  def change
    create_table :selections do |t|
      t.integer :project_id

      t.timestamps null: false
    end
  end
end
