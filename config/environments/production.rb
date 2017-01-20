Diffux::Application.configure do
  # Settings specified here will take precedence over those in
  # config/application.rb

  # Code is not reloaded between requests
  config.cache_classes = true

  # Full error reports are disabled and caching is turned on
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true

  # Don't care if the mailer can't send
  config.action_mailer.raise_delivery_errors = false

  # Save emails to file under tmp/emails
  config.action_mailer.delivery_method = :file
  config.action_mailer.file_settings  = {
    location: Rails.root.join('tmp', 'emails'),
  }
  config.action_mailer.default_url_options = { host: 'localhost:3000' }

  # See everything in the log (default is :info)
  config.log_level = :info

  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Only use best-standards-support built into browsers
  config.action_dispatch.best_standards_support = :builtin

  # Do not compress assets
  config.assets.compress = false
  config.assets.compile = true

  # Expands the lines which load the assets
  config.assets.debug = true

  # If config.eager_load is true, runs the config.before_eager_load hooks and
  # then calls eager_load! which will load all config.eager_load_namespaces.
  config.eager_load = true

  config.paperclip_defaults = {
    storage: :s3,
    s3_host_name: ENV['AWS_HOST_NAME'],
    s3_credentials: {
        bucket: ENV['AWS_BUCKET_NAME'],
        access_key_id: ENV['AWS_ACCESS_KEY'],
        secret_access_key: ENV['AWS_SECRET_KEY']
    }
  }
end
