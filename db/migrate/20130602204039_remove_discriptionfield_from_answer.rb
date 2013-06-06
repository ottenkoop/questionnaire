class RemoveDiscriptionfieldFromAnswer < ActiveRecord::Migration
  def up
    remove_column :answers, :discription
  end

  def down
    add_column :answers, :discription, :string
  end
end
