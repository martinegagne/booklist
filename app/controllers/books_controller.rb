class BooksController < ApplicationController

  def index
    @books = Book.all
    respond_to do |format|
      format.html
      format.text
      format.csv do
        self.generate_csv(book_list)
      end
    end
  end

end
