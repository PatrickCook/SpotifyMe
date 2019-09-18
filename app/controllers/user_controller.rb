require 'json'

class UserController < ApplicationController
  @@user_hash = nil

  def spotify_callback
    @spotify_user = RSpotify::User.new(request.env['omniauth.auth'])
    @@user_hash = @spotify_user.to_hash
  end

  def spotifyme
    genres= []
    spotify_user = RSpotify::User.new(@@user_hash)
    playlists = spotify_user.playlists(limit: 1)

    playlists.each do | playlist |
      tracks = playlist.tracks
      tracks.each do | track |
        artists = track.artists
        artists.each do | artist |
          genres += artist.genres
        end
      end
    end

    genres_counted = genres.uniq.map { |x| [x, genres.count(x)] }.sort_by { |k, v| -v }

    @genres_counted_json = genres_counted.to_h
  end
end
