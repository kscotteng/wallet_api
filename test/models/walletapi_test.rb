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
  
end
