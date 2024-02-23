require 'bankaccount'

RSpec.describe BankAccount do
  let(:new_account) { BankAccount.new }

  describe "#deposit" do
    it "increases the balance by the deposit amount" do
      new_account.deposit(100)
    end
  end

  describe "#withdraw" do
    it "decreases the balance by the withdrawal amount if funds are available" do
      new_account.deposit(100)
      new_account.withdraw(50)
    end
    it "does not change the balance if insufficient funds" do
      new_account.deposit(25)
      new_account.withdraw(50)
      expect(new_account.balance).to eq(25)
    end
  end
  describe "#balance" do
    it "returns the current balance" do
      puts new_account.balance
    end
  end
end
