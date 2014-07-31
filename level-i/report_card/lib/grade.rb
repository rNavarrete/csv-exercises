class Grade
	attr_reader :score, :subject, :student_name
	def initialize(data)
		@student_name = data[:student_name]
		@subject			= data[:subject]
		@score				= data[:score].to_i
	end
end