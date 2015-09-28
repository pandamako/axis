class Board < ActiveRecord::Base
  belongs_to :user
  has_many :lists, dependent: :destroy

  validates :name, :trello_id, presence: true
end
