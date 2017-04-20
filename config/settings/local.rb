# Rename this file to local.rb
# Since this file is not part of the git repository, you can set here sensitive data for local development.

SimpleConfig.for :application do
  group :facebook do
    set :namespace, 'occarpool'
    set :app_id, '1474980519208296'
    set :secret, '058a9d7bdd5d996d77cf4702f4fd5498'
    
    set :google_maps_api_key, 'AIzaSyDkfjT_ASbNxWX9nHs53s8eA138XJ5hlSQ'
  end
end
