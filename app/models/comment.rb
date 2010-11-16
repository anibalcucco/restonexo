class Comment < ActiveRecord::Base
  belongs_to :restaurant

  validates :body, :presence => true
end
