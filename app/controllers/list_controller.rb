class ListController < ApplicationController
  before_action :authenticate_user!
  before_action :fetch_board
  load_and_authorize_resource
  # before_action :fetch_trello_board
  # before_action :fetch_list

  def index
    @lists = @board.lists
  end

  def show
    @cards = @resource.cards.map(&:decorate)
  end
private
  # def fetch_list
  #   @resource = @trello_board.lists.find { |l| l.id == params[:id] }
  # end

  def fetch_board
    @board = Board.find params['board_id']
  end
end
