# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  content    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  survey_id  :integer
#

class Question < ActiveRecord::Base
  attr_accessible :content, :answers_attributes, :survey_id

  belongs_to :survey
  has_many :answers

  accepts_nested_attributes_for :answers
end
