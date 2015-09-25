class CreateActions < ActiveRecord::Migration
  def change
    create_table :actions do |t|
      t.references :card, index: true, null: false
      t.string :trello_id, null: false
      t.string :listBefore, null: false
      t.string :listAfter, null: false
      t.datetime :action_at, null: false
      t.timestamps null: false
    end
  end
end
