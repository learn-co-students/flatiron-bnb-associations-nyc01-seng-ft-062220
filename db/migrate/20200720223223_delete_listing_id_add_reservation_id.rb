class DeleteListingIdAddReservationId < ActiveRecord::Migration[5.0]
  def change
    remove_reference :reviews, :listing, index: true, foreign_key: true
    add_reference :reviews, :reservation, index: true, foreign_key: true
  end
end
