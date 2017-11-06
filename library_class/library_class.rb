class Library

attr_accessor :books

def initialize(books)
@books = books
end


  def list_books(books)
    book_titles = []
    for book in books
      book_titles.push(book[:title])
    end
    return book_titles
  end

  def book_info(books, title)
    for book in books
      if title == book[:title]
        return book
      end
    end
  end

  def rental_info(books, title)
    book_info(books, title)[:rental_details]
  end

  def add_book(books, new_book)
    books << new_book
  end


  def change_rental_details(books, title, student, date)
    book_info(books, title)[:rental_details] = {student_name: student, date: date}
  end

end
