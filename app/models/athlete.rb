class Athlete < ApplicationRecord
   has_many :scores
   belongs_to :affiliation
end
