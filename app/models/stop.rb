class Stop < ActiveRecord::Base
    belongs_to :destination
    belongs_to :trip

    def destination
        Destination.find_by(id:self.destination_id).name
    end
end