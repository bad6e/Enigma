require 'minitest/autorun'
require 'minitest/pride'
require './lib/date'


class DateTest < Minitest::Test

  def test_the_current_year_is_correct
    input = Date.new
    assert_equal Time.new(), input.current_date
  end

end