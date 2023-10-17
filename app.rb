
require_relative 'Modules/book_module'
require_relative 'Modules/movie_module'
require_relative 'Modules/music_module'
require_relative 'Modules/game_module'
require_relative 'Modules/author_module'
require_relative 'Modules/genre_module'
require_relative 'Modules/label_module'
require_relative 'Modules/source_module'

class App
    attr_accessor :authors, :genres, :books, :movies, :musics, :games, :labels, :sources

    def initialize()
        @authors=[]
        @genres=[]
        @books=[]
        @movies=[]
        @songs=[]
        @games=[]
        @labels=[]
        @sources=[]
    end

include BookModule
include MovieModule
include MusicModule
include GameModule
include AuthorModule
include GenreModule
include LabelModule
include SourceModule

end