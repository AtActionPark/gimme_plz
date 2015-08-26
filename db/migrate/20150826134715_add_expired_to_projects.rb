class AddExpiredToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :expired, :boolean
  end
end
