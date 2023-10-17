require 'json'
require_relative '../classes/Game/game'

class GameManager
  def save_games(games)
    File.open('json/game.json', 'w') do |file|
      data = {
        'Games' => games.map do |game|
          game_data = {
            'multiplayer' => game.multiplayer,
            'last_played_at' => game.last_played_at,
            'publish_date' => game.publish_date,
            'id' => game.id
          }
          game_data
        end
      }
      file.write(JSON.pretty_generate(data))
    end
  end

  def load_games
    return [] unless File.exist?('json/game.json')

    data = JSON.parse(File.read('json/game.json'))
    games = []
    data['Games'].map do |game_data|
      games << Game.new(game_data['multiplayer'], game_data['last_played_at'], game_data['publish_date'])
    end
    games
  end
end
