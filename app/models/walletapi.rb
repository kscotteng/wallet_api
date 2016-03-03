class Walletapi < ActiveRecord::Base

  def self.balance
    b = []
      self.all.each do |x|
        b << x.amount.to_f
      end
      total = b.sum
  end

  def self.instance
      self.all.count
  end

  def self.amount_spent_this_month
    Time.now.mon

  end

end
