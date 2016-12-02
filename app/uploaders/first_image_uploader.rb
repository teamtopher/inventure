class First_imageUploader < CarrierWave::Uploader::Base

  include CarrierWave::ImageOptimizer

  storage :file
  #storage :fog
  process :optimize

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end


end
