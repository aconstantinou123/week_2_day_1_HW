require('minitest/autorun')
require('minitest/rg')
require_relative('../library_class.rb')

class TestLibraryClass < Minitest::Test

  # def setup
  #   @books = [
  #     {
  #       title: "lord_of_the_rings",
  #       rental_details: {
  #        student_name: "Jeff",
  #        date: "01/12/16"
  #       }
  #     }
  #   ]
  #
  #   @library = Library.new(@books)
  # end

  def setup
		@books = [
			{
				title: "lord_of_the_rings",
				rental_details: {
					student_name: "Jeff",
					date: "01/12/16"
				}
			},
			{
				title: "1q84",
				rental_details: {
					student_name: "Alex",
					date: "12/06/15"
				}
			},
			{
				title: "war_and_peace",
				rental_details: {
					student_name: "Lacey",
					date: "16/08/17"
				}
			}
		]

		@library = Library.new(@books)
	end

  def test_list_books
    @library.list_books(@books)
    assert_equal(["lord_of_the_rings", "1q84","war_and_peace" ], @library.list_books(@books))
  end

  def test_book_info
    @library.book_info(@books, "war_and_peace")
    result_hash = {
      title: "war_and_peace",
      rental_details:
      {
        student_name: "Lacey",
        date: "16/08/17"
      }
    }
    assert_equal(result_hash, @library.book_info(@books, "war_and_peace"))
  end

  def test_rental_info
      @library.rental_info(@books, "1q84")
      result = {
        student_name: "Alex",
        date: "12/06/15"
      }
      assert_equal(result, @library.rental_info(@books, "1q84"))
  end
end
