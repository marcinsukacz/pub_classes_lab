
class Pub

  attr_reader :pub_name
  attr_accessor :drinks, :till, :stock
  def initialize(pub_name, drinks, till)
    @pub_name = pub_name
    @drinks = drinks
    @till = till
    # @stock = stock

  end


  def remove_drink(drink_name)
     @drinks[drink_name] -= 1
  end

  def drinks_stock_count(drink_name)
    return @drinks[drink_name]
  end

  def increase_till(price)
    @till += price
  end

  def check_age(customer)
    if customer.age > 17
      return true
    end
  end


  def sell_drink(drink, customer)
    if check_age(customer) == true
      if customer.is_drunk? != true
        remove_drink(drink)
        increase_till(drink.price)
        customer.reduce_wallet(drink)
        customer.drinks_drink(drink)
      end

    end
    return false
  end

  end
