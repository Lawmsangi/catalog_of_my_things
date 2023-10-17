require_relative '../classes/Music/genre'

module GenreModule
  def list_genres
    if @genres.empty?
        puts "No genres found"
    else
        @genres.each_with_index do |genre, index|
            puts "#{index+1}. ID:#{genre.id}, Last Name: #{genre.name}"
        end
    end
  end
end