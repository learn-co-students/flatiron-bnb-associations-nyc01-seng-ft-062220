class Listing < ApplicationRecord
  belongs_to :neighborhood
  belongs_to :host, :class_name => "User"
  has_many :reservations
  has_many :guests, through: :reservations
  # has_many :guests, :foreign_key => "guest_id"
  has_many :reviews, through: :reservations

  def guests
    self.reservations.map { |reservation| reservation.guest }
  end
end

