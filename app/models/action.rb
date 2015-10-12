class Action < ActiveRecord::Base
  belongs_to :card

  def list_before
    @list_before ||= List.find_by(trello_id: listBefore)
  end

  def list_after
    @list_after ||= List.find_by(trello_id: listAfter)
  end
end
