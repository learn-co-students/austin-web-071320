require 'bundler/setup'
Bundler.require

#ActiveRecord::Base.configurations.configs_for(env_name: "default")

ActiveRecord::Base.establish_connection(

    :adapter => "sqlite3",
    :database => "db/default.sqlite"
)

ActiveRecord::Base.logger = Logger.new(STDOUT)

require_all 'app'
# development:
#   adapter: sqlite3
#   database: db/development.sqlite3

# default: &default
#   adapter: postgresql
#   encoding: unicode
#   # For details on connection pooling, see rails configuration guide
#   # http://guides.rubyonrails.org/configuring.html#database-pooling
#   pool: 5
#
# development:
#   <<: *default
#   database: my_app_development

# keanu = Actor.new("Keanu") #ID => 1, #Movid_id => 1, Second_movie_id => 1
#
# keanu.movies << Movie.create(name: "The Gift") #ID => 1
# keanu.movies << Movie.create(name: "The Matrix") #ID => 1
#
# Movie_Actor = (actor: keanu, movie: the_gift)
# Movie_Actor = (actor: keanu, movie: the_matrix)
#
# Movie.find_by(title: "The Matrix")
