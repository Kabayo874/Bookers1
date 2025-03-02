class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @n_book = Book.new
  end

  def create
    @c_book = Book.new(book_params)
    if @book.save
      redirect_to '/books'
      # redirect_toで戻れないエラーが出ている！
    else
      render :books
    end
  end

  def show
  end

  def edit
  end


  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
  
end
