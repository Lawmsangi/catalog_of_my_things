require_relative '../classes/Game/game'

module GameModule
  def create_game(multiplayer, last_played_at, publish_date)
    game = Game.new(multiplayer, last_played_at, publish_date)
    @games << game
    save_game_to_file(@games)
  end

  def list_games
    if @games.empty?
      puts 'No games found'
    else
      @games.each_with_index do |game, index|
        last_played = game.last_played_at
        puts "#{index + 1}. Multiplayer: #{game.multiplayer},
        Last played at: #{last_played}, Publish date: #{game.publish_date}"
      end
    end
  end

  def save_game_to_file(games)
    @game_data.save_games(games)
  end
end
