class Micropost
  include Mongoid::Document
  field :content, type: String
  field :user_id, type: String
  belongs_to :user
  validates :content, length: { maximum: 140 }
end
