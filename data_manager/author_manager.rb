require 'json'
require_relative '../classes/Game/author'

class AuthorManager

  def load_authors
    return [] unless File.exist?("json/author.json")

    author_data = JSON.parse(File.read("json/author.json"))
    authors = []
    author_data['Authors'].map { |data| authors << Author.new(data['first_name'], data['last_name']) }
    authors
  end
end
