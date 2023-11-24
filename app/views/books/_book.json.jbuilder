json.extract! book, :id, :title, :availability, :synopsys, :created_at, :updated_at
json.url book_url(book, format: :json)
