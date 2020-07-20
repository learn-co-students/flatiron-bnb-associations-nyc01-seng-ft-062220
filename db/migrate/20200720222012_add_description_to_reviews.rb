class AddDescriptionToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :description, :string
    add_column :reviews, :rating, :integer
  end
end
