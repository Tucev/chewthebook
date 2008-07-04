class Review < ActiveRecord::Base
  belongs_to :task
  
  validates_presense_of :suggestion
  validates_presence_of :quality
  validates_length_of :quality, :winthin => 1..9
end
