class GradeSet < ApplicationRecord
	belongs_to :student

	validates_uniqueness_of :year, scope: :student_id

	validates_presence_of :year, :grade1

	validates_format_of :year, with: /\A[12][0-9]{3}\z/

	validates_numericality_of :grade1, :grade2, :grade3, :grade4,
		greater_than_or_equal_to: 0, less_than_or_equal_to: 10, allow_nil: true

	def avg
		valid_grades = [grade1,grade2,grade3,grade4].compact
		valid_grades.sum/valid_grades.size
	end

end
