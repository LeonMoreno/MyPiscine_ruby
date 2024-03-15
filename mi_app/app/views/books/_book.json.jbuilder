json.extract! book, :id, :tile, :author, :pages_count, :comments, :isbn, :created_at, :updated_at
json.url book_url(book, format: :json)
