Rails.application.routes.draw do
  root 'welcome#index'

  get '/auth/spotify/callback', to: 'user#spotify_callback'
  get '/user/spotify_genre_history',        to: 'user#spotify_genre_history'

end
