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
#

class Answer < ActiveRecord::Base
  attr_accessible :content, :points, :question_id

  belongs_to :question
  has_many :results, :through => :answer_results
end
