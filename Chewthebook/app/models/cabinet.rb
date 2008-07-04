class Cabinet < ActiveRecord::Base
  belongs_to :project
  has_many :materials
  
  attr_accessor :locked
  
  def locked?
    return locked != nil && locked == true;
  end
  
end
