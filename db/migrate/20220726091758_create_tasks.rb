class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|

      t.string :taskTitle
      t.boolean :comp
    end
  end
end
