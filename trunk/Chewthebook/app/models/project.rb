class Project < ActiveRecord::Base
  has_one :cabinet
  has_many :tasks
  has_many :milestones  
  has_and_belongs_to_many :users
  
  validates_presence_of :name,:description
  validataes_length_of :name, :within => 6..20
  validataes_length_of :description, :within => 6..200
  validates_uniqueness_of :name
  
  # find all projects that the owner attribute equals parameter.
  def own_projects?(user_id)
    #self.users.find 
    projects = find_by(:owner => user_id) 
    projects && projects.size > 0
  end
  
  # find all projects that the user_id attribute equals parameter.
  def participated_any_projects?(user_id)
    projects = find_by(:user_id => user_id) 
    projects && projects.size > 0
  end
  
  def started?
    return false if self.started.blank?
    return self.started != false
  end
  
end
