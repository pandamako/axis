class AddBoardUserId < ActiveRecord::Migration
  def change
    Board.destroy_all
    add_column :boards, :user_id, :Integer, null: false
  end
end