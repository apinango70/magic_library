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
  belongs_to :author
  belongs_to :literary_genre
end
