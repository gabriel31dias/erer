class MainsController < ApplicationController
  def unidades
    if params[:q]
      client = OpenStreetMap::Client.new
      @results = client.search(q: params[:q])

      respond_to do |format|
        format.html
        format.json { render json: @results }
      end
    end
  end
end
