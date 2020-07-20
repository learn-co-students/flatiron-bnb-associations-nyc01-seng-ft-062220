class User < ApplicationRecord

    has_many :listings, :foreign_key => 'host_id'
    has_many :reservations, through: :listings, :foreign_key => 'guest_id'
    has_many :reviews, :foreign_key => 'guest_id'
    has_many :reservations, :foreign_key => 'guest_id'

    def trips
        #dbReservation.all.map {|reservation| reservation.guest == self}
        self.reservations
    end

    def listings_id
       ##self.listings.re
    end

    def guest_reservations
        self.reservations.map { |reservation| reservation }
    end

end
