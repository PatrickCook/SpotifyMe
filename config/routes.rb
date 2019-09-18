Rails.application.routes.draw do
  root 'welcome#index'

  get '/auth/spotify/callback', to: 'user#spotify'

end
