# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )

Rails.application.config.assets.precompile += %w( bootstrap.min.js )

Rails.application.config.assets.precompile += %w( jquery-1.11.3.min.js )
Rails.application.config.assets.precompile += %w( jquery.touchSwipe.min.js )
Rails.application.config.assets.precompile += %w( bootstrap.min.css )
Rails.application.config.assets.precompile += %w( templatemo-style.css )
Rails.application.config.assets.precompile += %w( animate.css )
Rails.application.config.assets.precompile += %w( dev.css )
Rails.application.config.assets.precompile += %w( webcam.swf )
Rails.application.config.assets.precompile += %w( show_crime.css )
Rails.application.config.assets.precompile += %w( online.scss )
Rails.application.config.assets.precompile += %w( style_sign_up.scss )
Rails.application.config.assets.precompile += %w( slider.css )
Rails.application.config.assets.precompile += %w( chat.scss )
Rails.application.config.assets.precompile += %w( trip.scss )
Rails.application.config.assets.precompile += %w( style_sl.scss )
Rails.application.config.assets.precompile += %w( search_crime.scss )
Rails.application.config.assets.precompile += %w( stat.scss )
