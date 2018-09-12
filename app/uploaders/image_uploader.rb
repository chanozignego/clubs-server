class ImageUploader < FileUploader
  include CarrierWave::MiniMagick

  def extension_whitelist
    %w(jpg jpeg gif png)
  end

  version :thumb do
    process :resize_to_fill => [200, 200]
  end

end
