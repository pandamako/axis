describe Card do
  describe 'relation' do
    it { is_expected.to belong_to :list }
    it { is_expected.to have_many(:actions).dependent(:destroy) }
  end

  describe 'validation' do
    it {is_expected.to validate_presence_of :name }
    it {is_expected.to validate_presence_of :trello_id }
  end
end