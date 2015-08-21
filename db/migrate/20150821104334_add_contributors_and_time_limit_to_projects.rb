class AddContributorsAndTimeLimitToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :timelimit, :integer
  end
end
