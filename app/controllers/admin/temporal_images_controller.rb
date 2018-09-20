module Admin
  class TemporalImagesController < ActionController::Base

    def create
      image = TemporalImage.create(image: params[:file])
      render json: {url: image.image.try(:url)}, status: :ok
    end

  end
end
