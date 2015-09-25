class Card < ActiveRecord::Base
  belongs_to :board
  has_many :actions, dependent: :destroy, inverse_of: :card

  validates :name, presence: true
end
