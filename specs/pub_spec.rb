require ('Minitest/autorun')
require ('Minitest/rg')
require ('pry')
require_relative('../drink.rb')
require_relative('../pub.rb')
require_relative('../customer.rb')
require_relative('../food.rb')



class PubTest < Minitest::Test

  def setup
     @Whisky = Drink.new("Whisky", 2, 3)
     @Vodka = Drink.new("Vodka", 1, 3)
     @Beer = Drink.new("Beer", 3, 1)
     @stock =
       { @Whisky => 10,
         @Vodka => 15,
         @Beer => 25
       }

     @customer1 = Customer.new('Jimmy', 20, 21)

     @pub = Pub.new("Framptons", @stock, 500)
  end

  def test_has_name
    assert_equal("Framptons", @pub.pub_name)
  end

  def test_has_drinks
    assert_equal(@stock, @pub.drinks)
  end

  def test_has_money_in_till
    assert_equal(500, @pub.till)
  end

  def test_stock_count()
    assert_equal(10, @pub.drinks_stock_count(@Whisky))
  end

  def test_remove_drink
    @pub.remove_drink(@Whisky)                    ## removing chosen drink for drinks array.
    assert_equal(9, @pub.drinks_stock_count(@Whisky))      ## checking the array has reduced in size.
  end

  def test_add_money_to_till
    @pub.increase_till(2)
    assert_equal(502, @pub.till )
  end

  def test_selling_drink

    @pub.sell_drink(@Whisky, @customer1)
    @pub.sell_drink(@Whisky, @customer1)
    @pub.sell_drink(@Whisky, @customer1)
     assert_equal(7, @pub.drinks_stock_count(@Whisky))
     assert_equal(506, @pub.till)
     assert_equal(14, @customer1.wallet)
     assert_equal(9, @customer1.drunkeness)
  end

  def test_can_buy_drink
     assert_equal(true, @pub.check_age(@customer1))
  end


  # def test_show_stock_value()
  #   assert_equal(110, @stock.stock_value)
  # end





end
