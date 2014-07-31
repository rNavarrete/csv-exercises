require 'csv'
require_relative 'grade'


class GradeRepository
	attr_reader :grades
	
	def initialize(entries)
		@grades = entries		
	end

	def find_by_name(name)
		@grades.select {|grade| grade.student_name == name}
	end

	def self.load_entries(directory)
		file =  File.join(directory, 'grades.csv')
		data =	CSV.open(file, headers: true, header_converters: :symbol)
		rows =  data.map { |row| Grade.new(row)}
		GradeRepository.new(rows)
	end
end