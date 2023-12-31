# == Schema Information
#
# Table name: literary_genres
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class LiteraryGenre < ApplicationRecord
  # Relaciones y borrado en cascada
  has_many :books, dependent: :destroy
end
