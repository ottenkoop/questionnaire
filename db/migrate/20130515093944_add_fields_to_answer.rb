class AddFieldsToAnswer < ActiveRecord::Migration
  def change
    add_column :answers, :discription, :string
  end
end
