class RemoveReviewIdFromReservations < ActiveRecord::Migration[5.0]
  def change
    remove_column :reservations, :review, index: true, foreign_key: true
  end
end
