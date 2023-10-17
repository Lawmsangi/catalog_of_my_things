require 'json'
require_relative '../classes/Movie/movie'

class MovieManager
  def load_movie
    return [] unless File.exist?('json/movie.json')

    data = JSON.parse(File.read('json/movie.json'))
    movies = []
    data['Movies'].map do |movie_data|
      movies << Movies.new(movie_data['publish_date'], movie_data['silet'])
    end
    movies
  end

  def save_movie(movies)
    File.open('json/movie.json', 'w') do |file|
      data = {
        'Movies' => movies.map do |movie|
                      movie_data = {
                        'publish_date' => movie.publish_date,
                        'silet' => movie.silet
                      }
                      movie_data
                    end

      }
      file.write(JSON.pretty_generate(data))
    end
  end
end
