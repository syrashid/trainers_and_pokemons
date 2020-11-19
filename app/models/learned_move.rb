class LearnedMove < ApplicationRecord
  belongs_to :move
  belongs_to :pokemon
end
