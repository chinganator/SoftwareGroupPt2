class Book < ActiveRecord::Base
    belongs_to :user
    validates :title, presence: true
    validates :user_id, presence: true 

    accepts_nested_attributes_for :user 
end 