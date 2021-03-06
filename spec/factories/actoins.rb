FactoryGirl.define do
  factory :action do
    card
    trello_id 'sdfsdf'
    listAfter 'sdfsdf'
    listBefore 'sdfsdf'

    trait :start_list do
      listBefore CardDone::START_LIST_TRELLO_ID
    end

    trait :done_list do
      listAfter CardDone::DONE_LIST_TRELLO_ID
    end
  end
end