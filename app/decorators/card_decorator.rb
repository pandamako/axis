class CardDecorator < Draper::Decorator
  delegate_all

  def stats
    @stat ||= CardDone.new(self)
  end

end
