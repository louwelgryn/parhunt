class PhotoUploader < CarrierWave::Uploader::Base
 include Cloudinary::CarrierWave

  version :thumbnail do
    resize_to_fit 44, 44
  end
end
