class Teacher < ApplicationRecord
	belongs_to :subject
	has_many :lectures
	has_many :students, through: :lectures
end
