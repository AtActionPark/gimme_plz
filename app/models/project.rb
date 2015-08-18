class Project < ActiveRecord::Base
  belongs_to :user
  mount_uploader :picture, PictureUploader

  #validates :user_id, presence: true
  #validates :title, presence: true
  #validates :description, presence: true
  #validates :picture, presence: true
  #validates :presentation, presence: true

  validate do |project|
    project.errors.add(:base, "Renseigner le titre")  if project.title.blank?
  end

  validate do |project|
    project.errors.add(:base, "Choisir une image")  if project.picture.blank?
  end

  validate do |project|
    project.errors.add(:base, "Entrer une présentation")  if project.presentation.blank?
  end

  validate do |project|
    project.errors.add(:base, "Entrer une objectif")  if project.objective.blank?
  end

  validate do |project|
    project.errors.add(:base, "Entrer une description")  if project.description.blank?
  end

  
end
