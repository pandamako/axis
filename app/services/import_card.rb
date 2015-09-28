class ImportCard
  pattr_initialize :board, :trello_card

  def call
    list = import_list
    card = import_card list
    import_actions card
  end

  def import_list
    List.find_or_create_by(trello_id: trello_card.list.id) do |l|
      l.name = trello_card.list.name
      l.board = @board
    end
  end

  def import_card list
    Card.find_or_create_by(trello_id: trello_card.id) do |c|
      c.name = trello_card.name
      c.list = list
    end
  end

  def import_actions card
    trello_card.actions
      .select { |a| a.type == 'updateCard' && a.data['listAfter'] && a.data['listBefore'] }
      .each { |a| import_action card, a }
  end

  def import_action card, action
    Action.find_or_create_by!(trello_id: action.id) do |a|
      a.listAfter = action.data['listAfter']['id']
      a.listBefore = action.data['listBefore']['id']
      a.action_at = action.date
      a.card = card
    end
  end
end