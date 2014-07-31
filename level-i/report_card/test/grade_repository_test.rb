gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/grade_repository'

class GradeRepositoryTest < Minitest::Test

	def test_retrieve_by_name
		entries = [
      { student_name: 'Bob Williams',     subject: 'Physics',      score: 89},
      { student_name: 'Alice Smith',      subject: 'Biology',      score: 90},
      { student_name: 'Alice Smith',      subject: 'Anthropology', score: 95 }      
    ]

    repository    = GradeRepository.new(entries)
    alices_grades = repository.find_by_name("Alice Smith").sort_by { |i| i.subject }
    assert_equal 2, alices_grades.length


    g1, g2 = alices_grades

    assert_equal "Alice Smith",  g1.student_name
    assert_equal "Anthropology", g1.subject
    assert_equal 95, 						 g1.score

    assert_equal "Alice Smith",  g2.student_name
    assert_equal "Biology",      g2.subject
    assert_equal 90,             g2.score
	end
end

