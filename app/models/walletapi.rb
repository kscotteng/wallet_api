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

  
end
