describe CardDone do
  describe '#work_days' do
    let(:card) { create :card }
    let!(:action_start) { create :action, :start_list, card: card, action_at: 2.day.ago.to_date }
    let!(:action_stop) { create :action, :done_list, card: card, action_at: 1.day.ago.to_date }

    subject { CardDone.new(card).work_days }

    it { is_expected.to eq 86400 }
  end
end