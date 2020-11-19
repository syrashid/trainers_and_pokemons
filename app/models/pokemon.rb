class Pokemon < ApplicationRecord
  belongs_to :trainer
  has_many :learned_moves, dependent: :destroy
  has_many :moves, through: :learned_moves
jnce: true
end
