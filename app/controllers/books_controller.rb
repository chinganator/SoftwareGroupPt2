class BooksController < ApplicationController
    before_action :set_book, only: [:show, :edit, :update, :destroy]
    before_filter :authorize    
    #Written by: Daniel Ching
  #Debugged by: Daniel Ching
  #Tested by: Daniel Ching

    def new
        @book = Book.new
   
    end 

    def index
        params[:q].reject { |_, v| v.blank?} if params[:q]
        
        @books = Book.all.order(:id)
        @q = Book.ransack(params[:q])
        @books = @q.result.includes(:user)
    end 
    

    def create
        #render plain: params[:book].inspect 
        #  @book = Book.new(book_params)
        #  @book.user = User.first
        @book = current_user.books.build(book_params)
        if @book.save
    
            flash[:success] = "Book was succesfully created!"
            redirect_to book_path(@book)
        else 
            render 'new'
        end 
    end

    def edit
    end 

    def update
        if @book.update(book_params)
            flash[:notice]= "Book was updated"
            redirect_to book_path(@book)
        else 
            flash[:notice] = "Book was not updated"
            render 'edit'
        end
    end 

    def show 
        @books = Book.find(params[:id])
    end 
    
    
    def destroy
        @book_destroy = Book.find(params[:id])
        if @book_destroy.present?
            @book_destroy.destroy
        end 
        flash[:notice] = "Book was deleted"
        redirect_to books_path
    end 
    private 
        def book_params
            params.require(:book).permit(:user_id, :title, :author, :genre, :description, :bookpicture)
            .merge(user_id: current_user.id)
        end 

        def set_book
            @book = Book.find(params[:id])
        end 

end