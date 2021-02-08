class Gossip < ApplicationRecord
    belongs_to :user
    belongs_to :tag_gossip 
    has_many :tags, through: :taggossips
end
