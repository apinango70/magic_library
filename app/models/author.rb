# == Schema Information
#
# Table name: authors
#
#  id          :bigint           not null, primary key
#  name        :string
#  information :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Author < ApplicationRecord
  # Relaciones y borrado en cascada
  has_many :books, dependent: :destroy
  #validaciones
  validates :name, presence: true, uniqueness: true

end
