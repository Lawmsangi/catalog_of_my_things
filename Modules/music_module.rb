require_relative '../classes/Music/music'

module MusicModule
  def create_musicalbum(publish_date, on_spotify)
    song = MusicAlbum.new(publish_date, on_spotify)
    @songs << song
    save_music_to_file(@songs)
  end

  def list_music_albums
    if @songs.empty?
      puts 'No music albums found'
    else
      @songs.each_with_index do |song, index|
        puts "#{index + 1}. Is it on Spotify?: #{song.on_spotify}, Publish date: #{song.publish_date}"
      end
    end
  end

  def save_music_to_file(songs)
    @music_album_data.save_music_album(songs)
  end
end
