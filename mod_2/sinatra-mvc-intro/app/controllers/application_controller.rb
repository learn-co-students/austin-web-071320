class ApplicationController < Sinatra::Base
  configure do
    set :views, 'app/views'
  end

  get '/' do

    erb :index
  end

  get '/books' do

    @books = Book.all 
    erb :books
  end
end
