class Destination < ActiveRecord::Base
    has_many :stops
    has_many :trips, through: :stops
end