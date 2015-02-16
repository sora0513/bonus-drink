class BonusDrink
  def self.total_count_for(amount)
    return amount if amount < 3
    amari = amount % 3
    (amount - amari) + self.total_count_for((amount / 3) + amari)
  end
end