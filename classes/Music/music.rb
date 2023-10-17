require_relative '../item'

class MusicAlbum < Item
    attr_accessor :on_spotify
    attr_reader :id

    def initialize(publish_date,on_spotify)
        super(publish_date)
        @on_spotify = on_spotify
        @id = Random.rand(1...1000)
    end

    def can_be_archived?
        super == true && @on_spotify == true
    end
end