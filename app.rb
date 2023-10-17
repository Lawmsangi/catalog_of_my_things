require_relative 'Modules/book_module'
require_relative 'Modules/movie_module'
require_relative 'Modules/music_module'
require_relative 'Modules/game_module'
require_relative 'Modules/author_module'
require_relative 'Modules/genre_module'
require_relative 'Modules/label_module'
require_relative 'Modules/source_module'
require_relative 'data_manager/music_manager'
require_relative 'data_manager/game_manager'
require_relative 'data_manager/author_manager'
require_relative 'data_manager/genre_manager'
require_relative 'data_manager/book_manager'
require_relative 'data_manager/label_manager'
require_relative 'data_manager/source_manager'
require_relative 'data_manager/movie_manager'

class App
  attr_accessor :authors, :genres, :books, :movies, :musics, :games, :labels, :sources

  def initialize()
    @authors = []
    @genres = []
    @books = []
    @movies = []
    @songs = []
    @games = []
    @labels = []
    @sources = []
    @book_data = BookManager.new
    @movie_data = MovieManager.new
    @music_album_data = MusicManager.new
    @game_data = GameManager.new
    @author_data = AuthorManager.new
    @genre_data = GenreManager.new
    @label_data = LabelManager.new
    @source_data = SourceManager.new
    load_data
  end

  include BookModule
  include MovieModule
  include MusicModule
  include GameModule
  include AuthorModule
  include GenreModule
  include LabelModule
  include SourceModule

  def load_data
    @songs = @music_album_data.load_music_album
    @games = @game_data.load_games
    @authors = @author_data.load_authors
    @genres = @genre_data.load_genre
    @books = @book_data.load_books
    @labels = @label_data.load_labels
  end
end
