class Score < ApplicationRecord
  belongs_to :game
  belongs_to :athlete

end
