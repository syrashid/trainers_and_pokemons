class Pokemon < ApplicationRecord
  belongs_to :trainer
  has_many :learned_moves, dependent: :destroy
  has_many :moves, through: :learned_moves

  validates :name, :image_url, presence: true
end
