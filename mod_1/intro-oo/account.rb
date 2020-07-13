require "pry"
class BankAccount
  attr_reader :user_id, :balance

  attr_writer :username

  def username
    @username
  end

  def username=(username)
    @username = username
  end

  @@all = []

  def initialize(user_id, balance)
    binding.pry
    @user_id = user_id

    @balance = balance
    name = user_name
    self.class.all << self
    @@all << self

  end

  def deposit(amount)
    @balance += amount

  end

  def withdraw(amount)
    # self.balance -= amount
    balance -= amount
    @balance = amount
  end

  # self.balance

  def self.all
    @@all
  end

  def self.all_accounts
    all.each do |acct|
      puts "Account Id " + acct.user_id.to_s
    end

    # self.all.each
  end

end
