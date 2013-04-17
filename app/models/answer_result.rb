class AnswerResult < ActiveRecord::Base
  attr_accessible :result_id, :answer_id

  belongs_to :answer
  belongs_to :result
end