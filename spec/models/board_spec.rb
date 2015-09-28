describe Board do
  describe 'relation' do
    it { is_expected.to have_many :lists }
    it { is_expected.to belong_to :user }
  end

  describe 'validation' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :trello_id }
  end
end