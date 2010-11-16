class Restaurant < ActiveRecord::Base

  has_many :comments

  validates :name, :presence => true
  validates :description, :presence => true,
                          :length => { :minimum => 5 }

end
