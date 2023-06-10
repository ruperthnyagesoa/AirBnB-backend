class Trip < ActiveRecord::Base
    has_many :stops
    has_many :destinations, through: :stops

    def expanded_stops
        new_stops =[]
        self.stops.map do |stop|
        hash ={}
        hash[:id]=stop.id
        hash[:arrival]=stop.arrival
        hash[:departure]=stop.departure
        hash[:trip_id]=stop.trip_id
        hash[:destination_id]=stop.destination_id
        hash[:destination]=stop.destination
        new_stops.push(hash)
        end
        new_stops
    end
    # def initialize(attributes)
    #     attributes.each do |key, value| 
    #       self.send("#{key}=", value)
    #     end
    #   end
end