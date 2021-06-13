class Book
  attr_reader :book_title, :author, :year
  attr_writer :book_title, :author, :year

  def initialize(book_title, author, year)
    @book_title = book_title
    @author = author
    @year = year
  end
end

book = []
book.push Book.new('Harry Potter', 'J. K. Rowling', '1997')
book.push Book.new('Lord Of The Ring', 'J. R. R. Tolkien', '1954')
book.push Book.new('The Wonderful Wizard of OZ', 'L. Frank Baum', '1900')
book.push Book.new('It', 'Stephen King', '1986')
book.push Book.new('The Godfather', 'Mario Puzo', '1969')

book.each do |book|
  puts "=" * 40
  puts "Book Title: #{book.book_title}"
  puts "Author: #{book.author}"
  puts "Year: #{book.year}"
  puts "=" * 40
end
