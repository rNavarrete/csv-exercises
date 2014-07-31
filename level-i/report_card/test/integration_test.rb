gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/report_card'



class IntegrationTest < Minitest::Test

	def test_lookup_by_name
		report_card = ReportCard.new
		grades = report_card.lookup('Lisa Ledner').sort_by {|i| i.student_name}
		
		assert_equal 3, grades.length
		e1, e2, e3 = grades

		assert_equal "Lisa Ledner",      e1.student_name
		assert_equal "Computer Science", e1.subject
		assert_equal 83,                 e1.score


		assert_equal "Lisa Ledner",      e2.student_name
		assert_equal "Astronomy",        e2.subject
		assert_equal 80,                 e2.score

		assert_equal "Lisa Ledner",      e3.student_name
		assert_equal "Art", 						 e3.subject
		assert_equal 76,                 e3.score		
	end
end