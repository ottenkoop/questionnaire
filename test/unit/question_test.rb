# == Schema Information
#
# Table name: questions
#
#  id          :integer          not null, primary key
#  content     :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  survey_id   :integer
#  discription :string(255)
#

require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
