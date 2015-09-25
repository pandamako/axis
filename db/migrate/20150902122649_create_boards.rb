class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :name
      t.string :trello_id
      t.timestamps null: false
    end
  end
end
