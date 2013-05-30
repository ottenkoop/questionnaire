class AddQuestionidToAnswer < ActiveRecord::Migration
  def change
    add_column :answers, :questions_id, :integer
  end
end
