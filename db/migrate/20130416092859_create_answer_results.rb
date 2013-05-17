class CreateAnswerResults < ActiveRecord::Migration
  def change
    create_table :answer_results do |t|
      t.integer :answer_id
      t.integer :result_id

      t.timestamps
    end
  end
end
