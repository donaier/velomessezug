Rails.application.config.to_prepare do
  Kuhsaft::Engine.configure do
    config.image_sizes.build_defaults! # creates 960x540 and 320x180 sizes
  end

  Kuhsaft::Cms::AdminController.class_eval do
    before_filter :authenticate_admin!
  end
end
