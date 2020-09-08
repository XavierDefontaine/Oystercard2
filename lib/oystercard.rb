class Oystercard
  attr_reader :balance
  DEFAULT_BALANCE = 0
  MAX_LIMIT = 90

  def initialize(balance = DEFAULT_BALANCE)
    @balance = balance
  end

  def top_up(amount)
    raise "Exceeds maximum card limit of #{MAX_LIMIT}" if exceeds_limit?(amount)
    @balance += amount
  end

  def deduct(fare)
    @balance -= fare
  end

  private

  def exceeds_limit?(amount)
    (@balance + amount) > MAX_LIMIT
  end
  

end
