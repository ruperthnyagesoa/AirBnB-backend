class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    destinations=Destination.all
    trips = Trip.all
    stops = Stop.all
    arr=[destinations,trips,stops]
    arr.to_json
  end
end
