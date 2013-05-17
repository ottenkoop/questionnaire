# == Schema Information
#
# Table name: surveys
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Survey < ActiveRecord::Base
  attr_accessible :name, :questions_attributes

  has_many :questions

  accepts_nested_attributes_for :questions
end
