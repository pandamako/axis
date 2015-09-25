class CardDone
  pattr_initialize :card
  DONE_LIST_TRELLO_ID = '55408706d2d01c7886389de4'
  START_LIST_TRELLO_ID = '554086ff386b5daaceb2191c'

  def work_days
    last_action.action_at - first_action.action_at
  end

  def last_action
    @last_action ||= card.actions.sort_by(&:action_at)
      .reverse()
      .find { |a| a.listBefore == DONE_LIST_TRELLO_ID }
  end

  def first_action
    card.actions.sort_by(&:action_at)
    .find { |a| a.listBefore == START_LIST_TRELLO_ID } || card.actions.first
  end
end