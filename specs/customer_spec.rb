require ('Minitest/autorun')
require ('Minitest/rg')
require_relative('../drink.rb')
require_relative('../pub.rb')
require_relative('../customer.rb')
require_relative('../food.rb')


class TestCustomer < MiniTest::Test

  def setup
    @customer1 = Customer.new("Jimmy", 20, 21)
    @Whisky = Drink.new("Whisky", 2, 3)
    @Burger = Food.new("Burger", 3, 3)
  end


  def test_has_name
    assert_equal("Jimmy", @customer1.cust_name)
  end

  def test_has_dolla
    assert_equal(20, @customer1.wallet)
  end

  def test_reduce_wallet
    @customer1.reduce_wallet(@Whisky)
    assert_equal(18, @customer1.wallet)
  end

  def test_customer_has_age
    assert_equal(21, @customer1.age)

  end

  def test_increase_drunkeness
    @customer1.drinks_drink(@Whisky)
    assert_equal(3, @customer1.drunkeness)
  end

  def test_is_customer_steaming
    @customer1.drinks_drink(@Whisky)
    @customer1.drinks_drink(@Whisky)
    @customer1.drinks_drink(@Whisky)
    assert_equal(true, @customer1.is_drunk?)

  end

  def test_reduce_drunkeness
    @customer1.drinks_drink(@Whisky)
    @customer1.eats_food(@Burger)
    assert_equal(0, @customer1.drunkeness)
  end


end
