class Restaurant < ActiveRecord::Base

  has_many :comments

  validates :name, :presence => true
  validates :description, :presence => true,
                          :length => { :minimum => 5 }

  def rating
    @rating ||= comments.select("avg(rating) as avg").first.avg.to_i
  end

end
