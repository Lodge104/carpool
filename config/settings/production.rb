# frozen_string_literal: true

# DO NOT SET SENSITIVE DATA HERE!
# USE ENVIRONMENT VARIABLES OR 'local.rb' INSTEAD

SimpleConfig.for :application do
  set :base_url, ENV['APP_BASE_URL']
  set :single_process_mode, false

  set :google_analytics_id, ENV['GOOGLE_ANALYTICS_ID']
  set :google_maps_api_key, ENV['GOOGLE_MAPS_API_KEY']

  group :facebook do
    set :namespace, ENV['FACEBOOK_NAMESPACE']
    set :app_id, ENV['FACEBOOK_APP_ID']
    set :secret, ENV['FACEBOOK_SECRET']
  end

  group :airbrake do
    set :project_id, ENV['AIRBRAKE_PROJECT_ID']
    set :project_key, ENV['AIRBRAKE_PROJECT_KEY']
    set :host, ENV['AIRBRAKE_HOST']
  end

  group :mailer do
    set :from, '"Occoneechee Lodge Registration" <registration@lodge104.com>'
    set :host, 'lodge104.com'

    group :smtp_settings do
      set :address, 'ssl://smtp.gmail.com'
      set :port, 465
      set :authentication, :plain
      set :domain, 'lodge104.com'

      set :user_name, ENV['SMTP_USERNAME']
      set :password, ENV['SMTP_PASSWORD']
    end
  end

  group :redis do
    set :url, ENV['REDISTOGO_URL']
  end

  group :resque do
    set :user_name, ENV['RESQUE_WEB_USER']
    set :password, ENV['RESQUE_WEB_PASSWORD']
  end
end
