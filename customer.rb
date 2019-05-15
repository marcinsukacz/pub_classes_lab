class Customer


  attr_reader :cust_name, :wallet, :age, :drunkeness
  def initialize(cust_name, wallet, age)
    @cust_name = cust_name
    @wallet = wallet
    @age = age
    @drunkeness = 0

  end


  def reduce_wallet(drink)
    @wallet -= drink.price
    return @wallet
  end

  def drinks_drink(drink)
    @drunkeness += drink.alcohol_level
  end

  def is_drunk?
    if @drunkeness >= 9
      return true
    else
      return false
    end
  end

  def eats_food(food)
    @drunkeness -= food.rejuvenation_level
  end





end
