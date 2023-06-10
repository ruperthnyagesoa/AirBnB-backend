class StopController < ApplicationController
    
    get "/stops" do
        stops = Stop.all
        stops.to_json
    end

    get "/stops/:id" do
        stops = Stop.find(params[:id])
        serialize(stops)
    end

    post "/stops" do
        stop = Stop.create(
            arrival: params[:arrival],
            departure: params[:departure],
            trip_id: params[:trip_id],
            destination_id: params[:destination_id]
        )
        serialize(stop)
    end

    delete "/stops/:id" do
        stop = Stop.find(params[:id])
        stop.destroy
        serialize(stop)
    end

    patch "/stops/:id" do
        stop = Stop.update(
            arrival: params[:arrival],
            departure: params[:departure],
            trip_id: params[:trip_id],
            destination_id: params[:destination_id]
        )
        serialize(stop)
    end

    def serialize(stop)
        stop.to_json(
            methods: :destination
        )
    end
end