class Listing < ApplicationRecord
  belongs_to :host, :class_name => :User
  belongs_to :neighborhood
  has_many :reservations
  has_many :reviews, through: :reservations
  has_many :guests, through: :reservations
  # has_many :guests, :foreign_key => "guest_id"
 
  # def guests
  #   self.reservations.map { |reservation| reservation.guest }
  # end
end

