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

  def home
    # Seu código para gerar a string JSON
@banners = Banner.where(active: true).select do |banner|
  banner.image.attached?
end.map do |banner|
  {
    id: banner.id,
    name: banner.name,
    description: banner.description,
    active: banner.active,
    image_url: url_for(banner.image)
  }
end

# Remova a linha que está transformando @banners em uma lista de image_url
# @banners = @banners.pluck(:image_url)

# Converta para JSON
@banners_json = @banners.to_json(json_options: { escape: true })

# Converta a string JSON para base64
@banners_base64 = Base64.strict_encode64(@banners_json)


    
  end
end
