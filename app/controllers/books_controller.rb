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
   
   def edit
    @book = Book.find(book_params)
   end 
 
  def create
    @book = Book.new(book_params)
  
    if @book.save
     redirect_to @book
    end
  end  
  
  def update
   @book = Book.find(params[:id])
   
   if @book.update(book_params)
     redirect_to @book
   end
     end   
  private
   def book_params
     params.require(:book).permit(:booktitle, :comments, :rating)
	 end
end