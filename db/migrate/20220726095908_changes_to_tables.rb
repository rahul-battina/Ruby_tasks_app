class ChangesToTables < ActiveRecord::Migration
  def change
    change_column(:tasks, :comp, :string)
  end
end
