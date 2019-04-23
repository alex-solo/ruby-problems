require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < Minitest::Test
  def setup
    @register = CashRegister.new(100)
    @transaction = Transaction.new(33)
  end
  
  def test_accept_money
    @transaction.amount_paid = 33
    previous_amount = @register.total_money
    @register.accept_money(@transaction)
    
    assert_equal(previous_amount + 33, @register.total_money)
  end
  
  def test_change
    @transaction.amount_paid = 33
    assert_equal(0, @register.change(@transaction))
  end
  
  def test_give_receipt
    item_cost = 33
    transaction = Transaction.new(item_cost)
    output = "You've paid $#{item_cost}.\n"
    assert_output(output) { @register.give_receipt(transaction) }
  end
  
  def test_prompt_for_payment
    transaction = Transaction.new(30)
    input = StringIO.new('30\n')
    output = StringIO.new
    transaction.prompt_for_payment(input: input, output: output)
    assert_equal(30, transaction.amount_paid)
  end
  
end