class MapController < ApplicationController
  def index
    @buildings = Building.all
    @hash = Gmaps4rails.build_markers(@buildings) do |building, marker|
      marker.lat building.latitude
      marker.lng building.longitude
    end
  end
end
