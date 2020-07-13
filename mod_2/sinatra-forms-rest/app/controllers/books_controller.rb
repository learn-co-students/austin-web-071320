class BooksController < ApplicationController
  # Index
  get '/books' do
    @books = Book.all
    erb :'books/index'
  end

  # New
  get '/books/new' do
    erb :'/books/new'
  end

  # Create
  post '/books' do
    @book = Book.new(params)

    if @book.save
      redirect :"/books/#{@book.id}"
    else
      erb :'/books/new'
    end
  end

  # Show
  get '/books/:id' do
    # binding.pry
    @book = Book.find(params[:id])
    erb :'books/show'
  end
end
