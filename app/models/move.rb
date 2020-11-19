class Move < ApplicationRecord
  has_many :learned_moves
  has_many :pokemons, through: :learned_moves
end
