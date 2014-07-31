gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/grade'

class GradeTest < Minitest::Test
	def test_grade_attributes

		data = {
			student_name:  "Rubie Kshlerin",
			subject:       "Concert Band",
			score: 				 85
		}

		entry = Grade.new(data)

		assert_equal "Rubie Kshlerin", entry.student_name
		assert_equal "Concert Band", 	 entry.subject
		assert_equal 85, 							 entry.score
	end	
end	