class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.references :board, index: true, null: false
      t.string :name, null: false
      t.string :trello_id, null: false
      t.timestamps null: false
    end

    Card.destroy_all

    remove_reference :cards, :board, null: false, index: true
    add_reference :cards, :list, null: false, index: true
  end
end
