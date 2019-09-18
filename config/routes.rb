Rails.application.routes.draw do
  root 'welcome#index'

  get '/auth/spotify/callback', to: 'user#spotify_callback'
  get '/user/spotifyme',        to: 'user#spotifyme'

end
