require ('Minitest/autorun')
require ('Minitest/rg')
require_relative('../drink.rb')
require_relative('../pub.rb')
require_relative('../customer.rb')
require_relative('../food.rb')

class TestDrink < MiniTest::Test

  def setup
    @Whisky = Drink.new("Whisky", 2, 3)
  end



  def test_has_name
    assert_equal("Whisky", @Whisky.name)
  end


  def test_has_price
    assert_equal(2, @Whisky.price)
  end

  def test_has_alcohol_level
    assert_equal(3, @Whisky.alcohol_level)
  end

end
