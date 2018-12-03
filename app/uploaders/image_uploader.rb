class ImageUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

    def default_url(*args)
    # For Rails 3.1+ asset pipeline compatibility:
    # ActionController::Base.helpers.asset_path("fallback/" + [version_name, "default.png"].compact.join('_'))
    
    # "/images/fallback/" + [version_name, "default.png"].compact.join('_')
    # ActionController::Base.helpers.image_url("coin2.jpg") 
    # raise "image issue"
    ActionController::Base.helpers.asset_path("default.png")

      #  "/assets/" + [version_name, "default.png"].compact.join('_')

  end
end
