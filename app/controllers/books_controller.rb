class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(books_params)

    if @book.save
      redirect_to books_path, :notice => "Book is saved"
    else
      render "new"
    end

  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])

    if @book.update_attributes(books_params)
      redirect_to books_path, :notice => "#{@book.title} book is updated"
    else
      render "edit"
    end
  end

  def destroy
    @book = Book.find(params[:id])

    @book.destroy
    redirect_to books_path, :notice => "#{@book.title} is deleted"
  end

  private
  def books_params
    params.require(:book).permit(:id, :author, :title, :available)
  end

end
