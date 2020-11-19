class LearnedMove < ApplicationRecord
  belongs_to :move
  belongs_to :pokemon

  validates :move, uniqueness: { scope: :pokemon, message: "was already learned" }
end
