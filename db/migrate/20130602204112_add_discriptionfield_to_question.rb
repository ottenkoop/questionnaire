class AddDiscriptionfieldToQuestion < ActiveRecord::Migration
  def change
    add_column :questions, :discription, :string
  end
end
