require('minitest/autorun')
require('minitest/rg')
require_relative('../models/details')

class Wordformatter < MiniTest::Test

  def setup
   @contact = Contact.new( '3 ARGYLE HOUSE', 'CODE CLAN', 'e13 zqf', '0131558030')
  end


  def test_upcase
    assert_equal('E13 ZQF', @contact.postcode_upcase())
  end

  def test_camelcase
    assert_equal('Code Clan', @contact.building_camelcase())
  end

end