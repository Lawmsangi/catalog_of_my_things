require_relative 'app'
require_relative 'Modules/main_module'

class Main
  include MainModule

  def list_options
    puts "\n"
    puts 'Enter number to pick an option:'
    puts '1. List all books'
    puts '2. List all movies'
    puts '3. List all games'
    puts '4. List all music albums'
    puts '5. List all genres'
    puts '6. List all authors'
    puts '7. List all labels'
    puts '8. List all sources'
    puts '9. Add a book'
    puts '10. Add a movie'
    puts '11. Add a game'
    puts '12. Add a music album'
    puts '13. Exit'
  end

  def main
    app = App.new
    loop do
      list_options
      option = gets.chomp.to_i
      options = {
        1 => -> { app.list_books }, 2 => -> { app.list_movies },
        3 => -> { app.list_games }, 4 => -> { app.list_music_albums },
        5 => -> { app.list_genres }, 6 => -> { app.list_authors },
        7 => -> { app.list_labels }, 8 => -> { app.list_sources },
        9 => -> { add_book(app) },
        10 => -> { add_movie(app) },
        11 => -> { add_game(app) },
        12 => -> { add_music_album(app) },
        13 => -> { exit }
      }
      case option
      when 1..13
        options[option].call
      end
    end
  end
end

main = Main.new
main.main
