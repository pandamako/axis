class List < ActiveRecord::Base
  belongs_to :board
  has_many :cards, dependent: :destroy

  validates :name, :trello_id, presence: true
end
