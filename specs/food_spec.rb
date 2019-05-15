require ('Minitest/autorun')
require ('Minitest/rg')
require_relative('../drink.rb')
require_relative('../pub.rb')
require_relative('../customer.rb')
require_relative('../food.rb')

class FoodTest < MiniTest::Test

  def setup

    @Burger = Food.new("Burger", 3, 3)

  end


  def test_has_name
    assert_equal("Burger", @Burger.name)
  end

  def test_has_price
    assert_equal(3, @Burger.price)
  end

  def test_has_rejuv_level
    assert_equal(3, @Burger.rejuvenation_level)
  end




  
end
