class AddRatingToComments < ActiveRecord::Migration
  def self.up
    add_column :comments, :rating, :integer
  end

  def self.down
    remove_column :comments, :rating
  end
end
