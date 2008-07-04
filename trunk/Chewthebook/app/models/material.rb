class Material < ActiveRecord::Base
  belongs_to :cabinet
  has_many :text_pieces
  #location convension: //root//user_id//project_id//cabinet_id//
  #name convension: filename.suffix, for example, a.pdf
  #the material file path is: location.append(name), for example, http://domain.com/user_id/project_id/cabinet_id/a.pdf
  
  validates_presence_of :location, :name
end
