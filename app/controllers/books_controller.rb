class BooksController < ApplicationController
  skip_before_action :verify_authenticity_token
  layout "book"

  def index
    @books = Book.all
  end

  def create
    book = Book.new params.require(:book).permit(:author, :title, :year)
    return render json: book, status: :created if book.save
    render json: { error: 'title_already_exists' }, status: :unprocessable_entity
  end

  def show
    book = Book.find(params.fetch(:id))
    @book_props = { title: book.title, year: book.year, author: book.author }
  rescue ActiveRecord::RecordNotFound
    render status: :not_found
  end

  def destroy
    Book.find(params.fetch(:id)).destroy
    head :no_content
  end
end