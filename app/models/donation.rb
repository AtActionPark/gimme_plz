class Donation < ActiveRecord::Base
  belongs_to :user
  belongs_to :project

  validates_presence_of :user, :project, :amount
  validates :amount, :numericality => { :greater_than => 0 }
end
