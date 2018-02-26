# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )

# Fonts
Rails.application.config.assets.precompile << /\.(?:svg|eot|woff|ttf|otf)\z/

Rails.application.config.assets.precompile += %w( im-a-slider-nav.js )
Rails.application.config.assets.precompile += %w( jquery-ui.min.js )
Rails.application.config.assets.precompile += %w( zee_widget.js )
Rails.application.config.assets.precompile += %w( zee_widget_multi.js )
Rails.application.config.assets.precompile += %w( nav.js )
Rails.application.config.assets.precompile += %w( home.js )
Rails.application.config.assets.precompile += %w( articles.js )
Rails.application.config.assets.precompile += %w( company.js )
Rails.application.config.assets.precompile += %w( sliders.js )

Rails.application.config.assets.precompile += %w( owner_widget.css )
Rails.application.config.assets.precompile += %w( home.css )
Rails.application.config.assets.precompile += %w( company.css )
Rails.application.config.assets.precompile += %w( franchise.css )
Rails.application.config.assets.precompile += %w( articles.css )
Rails.application.config.assets.precompile += %w( article.css )
Rails.application.config.assets.precompile += %w( bbp.css )


# Old assets that I might keep/use
Rails.application.config.assets.precompile += %w( jquery-2.1.4.min.js )
Rails.application.config.assets.precompile += %w( jquery-2.1.4.min.map )
Rails.application.config.assets.precompile += %w( jquery-migrate-1.2.1.min.js )
# Rails.application.config.assets.precompile += %w( modernizr.js )
