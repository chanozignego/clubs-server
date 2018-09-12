module Admin
  class TemporalImagesController < ActionController::Base

    def create
      file = File.open(params[:image_param].try(:path), 'rb')
      post_image = TemporalImage.create(image: file)
      render json: { "link": post_image.image.try(:url) }, status: :ok
    end

  end
end
