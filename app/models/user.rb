class User < ActiveRecord::Base
    has_many :books
    has_attached_file :avatar, styles: { large: "600x600>", medium: "300x300>", thumb: "150x150>"}
    validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
    has_secure_password

end
