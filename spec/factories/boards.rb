FactoryGirl.define do
  factory :board do
    user
    name 'test'
    trello_id '234234'
  end
end