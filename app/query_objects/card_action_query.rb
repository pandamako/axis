class CardActionQuery
  pattr_initialize :card

  START_LIST = /Develop/
  FINISH_LIST = 'Publish'

  def work_time
    finish_date() - start_date()
  end

  def start_date
    start_action = move_actions().reverse().find { |a| a.data['listAfter']['name'] =~ START_LIST }
    date = if start_action
      start_action.date
    else
      move_actions().last.date
    end

    date.to_date

  end

  def finish_date
    move_actions().reverse().find { |a| a.data['listAfter']['name'] == FINISH_LIST }.date.to_date
  end

  def move_actions
    @move_actions ||= card.actions.select { |a| a.type == 'updateCard' && a.data['listAfter'] && a.data['listBefore'] }
  end
end