class AddAmountToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :amount, :integer, :default => 0
  end
end
