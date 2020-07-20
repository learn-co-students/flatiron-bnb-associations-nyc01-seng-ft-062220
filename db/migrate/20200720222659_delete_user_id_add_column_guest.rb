class DeleteUserIdAddColumnGuest < ActiveRecord::Migration[5.0]
  def change
    remove_reference :reviews, :user, index: true, foreign_key: true
    add_reference :reviews, :guest, index: true, foreign_key: true
  end
end
