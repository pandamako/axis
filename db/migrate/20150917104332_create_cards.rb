class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :name, null: false
      t.string :trello_id, null: false
      t.references :board, index: true, null: false
      t.timestamps null: false
    end
  end
end
