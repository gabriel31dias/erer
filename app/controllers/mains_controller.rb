class MainsController < ApplicationController
  def unidades
    if params[:q]
      client = OpenStreetMap::Client.new
      @results = client.search(q: params[:q])
    end
  end
end
