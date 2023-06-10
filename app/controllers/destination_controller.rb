class DestinationController < ApplicationController
    get "/destinations" do
        destinations=Destination.all
        serialize(destinations)
    end
    
    get "/destinations/:id" do
        destination = Destination.find(params[:id])
        serialize(destination)
     end

    post "/destinations" do
        destination = Destination.create(
            name: params[:name],
            location: params[:location],
            description: params[:description]
        )
        serialize(destination)
    end

    delete "/destinations/:id" do
        destination = Destination.find(params[:id])
        destination.destroy
        serialize(destination)
    end

    patch "/destinations/:id" do
        destination = Destination.find(params[:id])
        destination.update(
            name: params[:name],
            location: params[:location],
            description: params[:description]
        )
        serialize(destination)
    end

    def serialize(destination)
        destination.to_json
    end
end