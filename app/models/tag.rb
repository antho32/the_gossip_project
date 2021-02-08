class Tag < ApplicationRecord
    belongs_to :taggossips 
    has_many :gossips, through: :taggossips
end
