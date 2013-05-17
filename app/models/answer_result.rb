# == Schema Information
#
# Table name: answer_results
#
#  id         :integer          not null, primary key
#  answer_id  :integer
#  result_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class AnswerResult < ActiveRecord::Base
  attr_accessible :result_id, :answer_id

  belongs_to :answer
  belongs_to :result
end
