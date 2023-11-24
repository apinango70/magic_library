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
require "test_helper"

class AuthorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
