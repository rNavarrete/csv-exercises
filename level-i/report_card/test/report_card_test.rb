gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/mock'
require_relative '../lib/report_card'


class ReportCardTest < Minitest::Test
	def test_lookup
		repository =   Minitest::Mock.new
		report_card =	 ReportCard.new(repository)
		repository.expect(:find_by_name, [], ["Ledner"])
		report_card.lookup("Ledner")
		repository.verify
	end
end