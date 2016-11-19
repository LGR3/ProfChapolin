class Student < ApplicationRecord
	has_many :grade_sets
	
	validates_presence_of :cpf, :name
	validates_uniqueness_of :cpf

	validates_format_of :cpf, with: /\A\d{3}\.\d{3}\.\d{3}-\d{2}\z/

end
