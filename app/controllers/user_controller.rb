require 'json'
require 'pp'

class UserController < ApplicationController
  @@user_hash = nil

  def spotify_callback
    @spotify_user = RSpotify::User.new(request.env['omniauth.auth'])
    @@user_hash = @spotify_user.to_hash
  end

  def spotify_genre_history
    data = {}
    spotify_user = RSpotify::User.new(@@user_hash)
    playlists = spotify_user.playlists(limit: 1)

    playlists.each do | playlist |
      data = playlist.tracks_added_at
      tracks = playlist.tracks
      tracks.each do | track |
        artists = track.artists
        track_genres = []
        artists.each do | artist |
          track_genres = artist.genres
        end

        data[track.id] = {
          :track_name => track.name,
          :date_added => data[track.id],
          :genres => track_genres
        }

      end
    end
    @genres = data
  end
end
