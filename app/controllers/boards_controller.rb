class BoardsController < ApplicationController
  before_action :authenticate_user!
  # skip_authorize_resource :only => :new
  load_and_authorize_resource

  def index
    @collection = Board.all
  end

  def new
    @trello_boards = Trello::Board.all
  end

  def create
    if @resource.valid?
      @resource.name = Trello::Board.find(@resource.trello_id).name
      if @resource.save!
        redirect_to boards_url
      else
        render :new
      end
    else
      render :new
    end
  end

  def lists
    trello_board = Trello::Board.find @resource.trello_id
    @lists = trello_board.lists
  end

  def cards
    1/0
  end

private

  def new_params
    params
      .require(:board)
      .permit(:user_id)
  end

  def create_params
    params
      .require(:board)
      .permit(:trello_id, :user_id)

  end
end
