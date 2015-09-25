class DoneCardsQuery
  pattr_initialize :board
  DONE_LIST_TRELLO_ID = '55408706d2d01c7886389de4'

  def perform
    board.cards.select { |c| c.actions.any? { |a| a.listAfter == DONE_LIST_TRELLO_ID }}
  end
end