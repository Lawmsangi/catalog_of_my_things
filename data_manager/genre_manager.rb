require 'json'
require_relative '../classes/Music/genre'

class GenreManager
  def load_genre
    return [] unless File.exist?('json/genre.json')

    data = JSON.parse(File.read('json/genre.json'))
    genres = []
    data['Genres'].map { |genre_data| genres << Genre.new(genre_data['name']) }
    genres
  end
end
