class PictureUploader < FileUploader
  include CarrierWave::MiniMagick

  def extension_whitelist
    %w(jpg jpeg gif png)
  end

  version :thumb do
    process :resize_to_fill => [300, 300]
  end

  version :smallthumb do
    process :resize_to_fill => [150, 150]
  end

  version :logo do
    process :resize_to_fill => [30, 30]
  end

  version :avatar do
    process :resize_to_fill => [75, 75]
  end
  
  version :principal_slider do
    process :resize_to_fill => [400, 400]
  end

  version :principal_carousel do
    process :resize_to_fill => [668, 328]
  end

  version :category do 
    process :resize_to_fill => [310, 150]
  end

  version :post_sidebar do 
    process :resize_to_fill => [150, 80]
  end

end
