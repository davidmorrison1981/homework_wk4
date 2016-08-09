require('minitest/autorun')
require('minitest/rg')
require_relative('../models/shoe')

class TestShoo < MiniTest::Test

  def setup()
    @shoo = Shoo.new({ 
      "first_name" =>"David", 
      "last_name"=>"Morrison", 
      "address"=>"Elliot House", 
      "shoo_size"=>10, 
      "quantity"=>2
      })
  end

  def test_first_name()
    assert_equal("David", @shoe.first_name)
  end 

  def test_last_name()
    assert_equal("Morrison", @shoe.last_name)
  end

  def test_concat_name()
    assert_equal("David Morrison", @shoe.concat_name())
  end

  def test_has_address()
    assert_equal("Elliot House", @shoe.address)
  end

  def test_has_size()
    assert_equal(10, @shoe.size)
  end

  def test_has_quantity()
    assert_equal(2, @shoe.quantity())
  end


end