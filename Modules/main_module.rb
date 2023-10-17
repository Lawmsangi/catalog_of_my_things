module MainModule
  def add_book(app)
    puts "\n"
    puts 'Enter book publisher:'
    publisher = gets.chomp
    puts 'Enter book cover state:'
    cover_state = gets.chomp
    puts 'Enter book publish date:'
    publish_date = gets.chomp
    app.create_book(publisher, cover_state, publish_date)
  end

  def add_movie(app)
    puts "\n"
    puts 'Enter movie silet:'
    silet = gets.chomp
    puts 'Enter movie publish date:'
    publish_date = gets.chomp
    app.create_movie(publish_date, silet)
  end

  def add_game(app)
    puts "\n"
    puts 'Is the game multiplayer? (y/n)'
    multiplayer = gets.chomp
    puts 'Enter game last played at:'
    last_played_at = gets.chomp
    puts 'Enter game publish date:'
    publish_date = gets.chomp
    app.create_game(multiplayer, last_played_at, publish_date)
  end

  def add_music_album(app)
    puts "\n"
    puts 'Is the music album on spotify? (y/n)'
    on_spotify = gets.chomp
    puts 'Enter music album publish date:'
    publish_date = gets.chomp
    app.create_musicalbum(publish_date, on_spotify)
  end
end
