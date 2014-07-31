require_relative 'grade_repository'
class ReportCard
  attr_reader :repository

	def initialize(repository = GradeRepository.load_entries('./data'))
		@repository = repository
	end

	def lookup(name)
		@repository.find_by_name(name)
	end
end