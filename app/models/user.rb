class User < ActiveRecord::Base
    #Written by: Daniel Ching
  #Debugged by: Daniel Ching
  #Tested by: Daniel Ching
    has_many :books
    validates :email, presence: true
    has_attached_file :avatar, styles: { large: "600x600>", medium: "300x300>", thumb: "150x150>"}
    validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
    has_secure_password

end
