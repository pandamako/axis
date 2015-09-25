class ListController < ApplicationController
  before_action :authenticate_user!
  before_action :fetch_board
  before_action :fetch_trello_board
  before_action :fetch_list

  def index
    @lists = @trello_board.lists
  end

  def show
  end
private
  def fetch_list
    @resource = @trello_board.lists.find { |l| l.id == params[:id] }
  end

  def fetch_trello_board
    @trello_board = Trello::Board.find @board.trello_id
  end

  def fetch_board
    @board = Board.find params['board_id']
  end
end
