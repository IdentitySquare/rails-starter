ForestLiana.env_secret = ENV['FOREST_ADMIN_ENV_SECRET'] || Rails.application.credentials.dig(Rails.env.to_sym, :forest_admin, :env_secret)
ForestLiana.auth_secret = ENV['FOREST_ADMIN_AUTH_SECRET'] || Rails.application.credentials.dig(Rails.env.to_sym, :forest_admin, :auth_secret)