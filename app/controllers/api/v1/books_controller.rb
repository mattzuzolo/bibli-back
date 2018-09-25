class Api::V1::BooksController < ApplicationController

  def index
    @books = Book.all
    render json: @books.to_json()
  end

  def show
    @book = Book.find(params[:id])
    render json: @book.to_json()
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.create(book_params)
    @employee.save if @book.valid?
    render json: @book.to_json()
  end

  private

    def book_params
      params.permit(:email)
    end

    def find_book
      @book = Book.find(params[:id])
    end

end
