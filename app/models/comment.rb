class Comment < ActiveRecord::Base
  belongs_to :restaurant

  validates :body, :presence => true
  validates :rating, :presence => true
end
