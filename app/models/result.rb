# == Schema Information
#
# Table name: results
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Result < ActiveRecord::Base
  attr_accessible :answer_results_attributes

  has_many :answer_results
  has_many :answers, :through => :answer_results

  accepts_nested_attributes_for :answer_results, :reject_if => lambda { |a| ( a[:answer_id].to_i == 0) }
end
