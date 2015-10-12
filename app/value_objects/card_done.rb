class CardDone
  pattr_initialize :card
  DONE_LIST_TRELLO_ID = '55408706d2d01c7886389de4'
  START_LIST_TRELLO_ID = '554086ff386b5daaceb2191c'

  def work_days
    last_action.action_at.to_date - first_action.action_at.to_date
  end

  def last_action
    @last_action ||= card.actions.sort_by(&:action_at)
      .reverse()
      .find { |a| a.listAfter == DONE_LIST_TRELLO_ID }
  end

  def first_action
    card.actions.sort_by(&:action_at)
    .find { |a| a.listAfter == START_LIST_TRELLO_ID } || card.actions.sort_by(&:action_at).first
  end
end