class TextPiece < ActiveRecord::Base
  belongs_to :material
  
  validates_presence_of :text, :translated_text
  validates_presence_of :progress
  validates_length_of :text, :within => 0..5000
  validates_length_of :translated_text, within => 0..5000
  
end
