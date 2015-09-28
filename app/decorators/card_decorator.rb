class CardDecorator < Draper::Decorator
  delegate_all

  def work_time
    CardDone.new(self).work_days
  end

end
