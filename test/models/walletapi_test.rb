require 'test_helper'

class WalletapiTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "testing amount balance" do
    assert_equal 25.00, Walletapi.balance

  end

  test "testing number of instances" do
    assert_equal 2, Walletapi.instance

  end
  test "testing amount spent in current month" do
    assert_equal 2, Walletapi.amount_spent_this_month

  end

end
