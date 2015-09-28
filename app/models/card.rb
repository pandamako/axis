class Card < ActiveRecord::Base
  belongs_to :list
  has_many :actions, dependent: :destroy, inverse_of: :card

  validates :name, :trello_id, presence: true
end
