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
    project.errors.add(:base, "L'objectif doit être positif ")  if project.objective< 0
  end

  validate do |project|
    project.errors.add(:base, "Entrer une limite de temps")  if project.timelimit.blank?
  end

  validate do |project|
    project.errors.add(:base, "La limite de jours doit être positive ")  if project.timelimit< 0
  end

   validate do |project|
    project.errors.add(:base, "Entrer une categorie")  if project.category.blank?
  end

  validate do |project|
    project.errors.add(:base, "Entrer une description")  if project.description.blank?
  end

  has_attached_file :mainpicture, :styles => { :medium => "300x300>", :thumb => "253x253#" }

  validates_attachment_content_type :mainpicture, :content_type => /\Aimage\/.*\Z/

  def contributors
    Donation.where("project_id = ?", self.id).select('DISTINCT user_id').count()
  end

  def remainingTime
    p = Project.find(self.id)
    rem = [(p.timelimit - (Time.now - p.created_at)/1.day).ceil,0].max
    if rem <= 0
      p.update_attribute('expired', true)
    end
    rem

  end

  def percentage
    (amount.to_f/objective.to_f*100).to_i
  end

  filterrific(
    default_filter_params: {},
    available_filters: [
      :search_query,
      :with_category,
      :with_not_expired
    ]
  )

  # filters on 'categories' foreign key
  scope :with_category, lambda { |categories|
    where(category: [*categories])
  }

  # filters on not expired
  scope :with_not_expired, lambda { |flag|
    if flag == '0'
      all
    else
      where( expired: false || nil)
    end
  }

  scope :search_query, lambda { |query|
    # Searches query on the 'title' and 'description' columns.
    # Matches using LIKE, automatically appends '%' to each term.
    # LIKE is case INsensitive with MySQL, however it is case
    # sensitive with PostGreSQL. To make it work in both worlds,
    # we downcase everything.
    return nil  if query.blank?

    # condition query, parse into individual keywords
    terms = query.downcase.split(/\s+/)

    # replace "*" with "%" for wildcard searches,
    # append '%', remove duplicate '%'s
    terms = terms.map { |e|
      ('%' + e.gsub('*', '%') + '%').gsub(/%+/, '%')
    }
    # configure number of OR conditions for provision
    # of interpolation arguments. Adjust this if you
    # change the number of OR conditions.
    num_or_conds = 2
    where(
      terms.map { |term|
        "(LOWER(projects.title) LIKE ? OR LOWER(projects.presentation) LIKE ?)"
      }.join(' AND '),
      *terms.map { |e| [e] * num_or_conds }.flatten
    )
  }

  def self.options_for_category
    [
      'Art',
      'BD',
      'Artisanat',
      'Danse',
      'Design',
      'Mode',
      'Cinema & video',
      'Gastronomie',
      'Jeux',
      'Journalisme',
      'Musique',
      'Photographie',
      'Edition',
      'Technologie',
      'Theatre'
    ]
  end



end

