# == Schema Information
#
# Table name: answers
#
#  id          :integer          not null, primary key
#  content     :string(255)
#  points      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  question_id :integer
#  discription :string(255)
#

require 'test_helper'

class AnswerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
