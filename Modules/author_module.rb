require_relative '../classes/Game/author'

module AuthorModule
  def list_authors
    if @authors.empty?
        puts "No authors found"
    else
        @authors.each_with_index do |author, index|
            puts "#{index+1}. ID:#{author.id}, First Name: #{author.first_name}, Last Name: #{author.last_name}"
        end
    end
  end
end