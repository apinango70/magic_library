class AddLiteraryGenreToBooks < ActiveRecord::Migration[7.0]
  def change
    add_reference :books, :literary_genre, null: false, foreign_key: true
  end
end
