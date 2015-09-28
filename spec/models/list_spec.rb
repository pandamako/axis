describe List do
  describe 'relation' do
    it { is_expected.to belong_to :board }
    it { is_expected.to have_many :cards }
  end

  describe 'validation' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :trello_id }
  end
end
