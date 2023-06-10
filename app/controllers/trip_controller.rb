class TripController < ApplicationController
    get "/trips" do
        trips = Trip.all
        serialize(trips)
      end

    get "/trips/:id" do
        trip = Trip.find(params[:id])
        trip.to_json(
            methods: :expanded_stops
        )
    end

    post "/trips" do
        trip = Trip.create(
            title: params[:title],
            description: params[:description],
            start_date: params[:start_date],
            end_date: params[:end_date]
        )
        serialize(trip)
    end

    delete "/trips/:id" do
        trip = Trip.find(params[:id])
        trip.destroy
        serialize(trip)
    end

    patch "/trips/:id" do
        trip = Trip.find(params[:id])
        trip.update(
            title: params[:title],
            description: params[:description],
            start_date: params[:start_date],
            end_date: params[:end_date]
        )
        serialize(trip)
    end

    def serialize(trip)
        trip.to_json
    end
end