require_relative '../classes/Movie/movie'

module MovieModule
  def create_movie(publish_date, silet)
    movie = Movie.new(publish_date, silet)
    @movies << movie
    save_movie_to_file(@movies)
  end

  def list_movies
    if @movies.empty?
      puts 'No movies found'
    else
      @movies.each_with_index do |movie, index|
        puts "#{index + 1}. Silet: #{movie.silet}, Publish date: #{movie.publish_date}"
      end
    end
  end

  def save_movie_to_file(movies)
    @movie_data.save_movie(movies)
  end
end
