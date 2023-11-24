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
  has_many :books
end
