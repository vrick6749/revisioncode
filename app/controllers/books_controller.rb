class BooksController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action :setup_data

    def index
        render json: session[:books]
    end
    
    #Show a single book
    def show
        #repond back with the book in json
       
        session[:books].each do |book|
            
            if book["id"]== params[:id]
                render json: book
            end
        end
    end
    
    #Create a new book
    def create
        #respond back with the created book in json
        id = params[:id]
        title = params[:title]
        author = params[:author]
        new_book = {id: id, title: title, author: author}
        session[:books].push(new_book)
        render json: new_book
    end
    
    #Update a book
    def update
        # respond back with the udpated book in json
        title = params[:title]
        author = params[:author]
        updated_version= {title: title, author: author}
        session[:books].each do |book|
            if book[:id] == params[:id]
                book = updated_version
                render json: book
            end
            
        end
    end
    
    #Remove a book
    def destroy
        # respond back with the deleted book in json

    end

    private
    def setup_data
        session[:books] = [
            { id: "1", title: "Harry Potter", author: "J.K Rowling" },
            { id: "2", title: "Name of the wind", author: "Patrick Rothfuss" }
         ] unless session[:books]
    end
end