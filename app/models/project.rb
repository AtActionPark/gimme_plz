class Project < ActiveRecord::Base
  belongs_to :user
  has_many :donations, dependent: :destroy
  self.per_page = 10
  #validates :user_id, presence: true
  #validates :title, presence: true
  #validates :description, presence: true
  #validates :picture, presence: true
  #validates :presentation, presence: true

  validate do |project|
    project.errors.add(:base, "Renseigner le titre")  if project.title.blank?
  end

  validate do |project|
    project.errors.add(:base, "Choisir une image")  if project.mainpicture.blank?
  end

  validate do |project|
    project.errors.add(:base, "Entrer une présentation")  if project.presentation.blank?
  end

  validate do |project|
    project.errors.add(:base, "Entrer une objectif")  if project.objective.blank?
  end

  validate do |project|
    project.errors.add(:base, "Entrer une limite de temps")  if project.timelimit.blank?
  end

  validate do |project|
    project.errors.add(:base, "Entrer une description")  if project.description.blank?
  end

  has_attached_file :mainpicture, :styles => { :medium => "300x300>", :thumb => "100x100#" }

  validates_attachment_content_type :mainpicture, :content_type => /\Aimage\/.*\Z/

  def contributors
    Donation.where("project_id = ?", self.id).select('DISTINCT user_id').count()
  end

  def remainingTime
    p = Project.find(self.id)
    (p.timelimit - (Time.now - p.created_at)/1.day).floor
  end

    
  
end
