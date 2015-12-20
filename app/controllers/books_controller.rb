class BooksController < ApplicationController
  def index
      @books = Book.all
  end
    
#fonction avec Book.create
   def create
    Book.create title: params[:title]
   redirect_to "/books"
    end
    
    #fonction avec Book.new
   # def create
       # book = Book.new
       # book.title = params[:title]
       # book.save
        #redirect_to "/books"  
    #end
    
     def show
        @book = Book.find(params[:id])
    end
    
    def update
        Book.find(params[:id]).update title: params[:title]
        redirect_to "/books/#{params[:id]}"
    end
    
    def destroy
        Book.find(params[:id]).destroy
        redirect_to "/books"
    end
end
