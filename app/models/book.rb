class Book < ActiveRecord::Base
    #Written by: Daniel Ching
  #Debugged by: Daniel Ching
  #Tested by: Daniel Ching
    belongs_to :user
    has_attached_file :bookpicture, styles: { large: "600x600>", medium: "300x300>", thumb: "150x150>"}
    validates_attachment_content_type :bookpicture, content_type: /\Aimage\/.*\Z/

    validates :title, presence: true
    validates :user_id, presence: true 

    accepts_nested_attributes_for :user 
end 