class Subject < ApplicationRecord
   has_many :teachers

   belongs_to :student
end
