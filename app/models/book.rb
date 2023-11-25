# == Schema Information
#
# Table name: books
#
#  id           :bigint           not null, primary key
#  title        :string
#  availability :boolean
#  synopsys     :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Book < ApplicationRecord
  # relaciones
  belongs_to :author
  belongs_to :literary_genre

  #validaciones
  validates :title, presence: true, uniqueness: true
  validates :synopsys, presence: true

end
