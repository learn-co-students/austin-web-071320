Book.destroy_all

GoogleBooks::Adapter.new("Michael Chriton").fetch_books
GoogleBooks::Adapter.new("H.G. Wells").fetch_books
