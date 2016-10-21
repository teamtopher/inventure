class ImageUploader < CarrierWave::Uploader::Base

 include CarrierWave

  #storage :file
  storage :fog

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

    version :thumb do
    process :resize_to_limit => [400, 400]
  end

end
