require_relative '../classes/Book/book'

module BookModule
  def create_book(publisher,cover_state,publish_date)
    book = Book.new(publisher,cover_state,publish_date)
    @books << book
    # save_book_to_file(@books)
  end

  def list_books
    if @books.empty?
      puts "No books found"
    else
      @books.each_with_index do |book, index|
        puts "#{index+1}. Publisher: #{book.publisher}, Cover state: #{book.cover_state}, Publish date: #{book.publish_date}"
      end
    end
  end

#   def save_book_to_file

#   end
end
