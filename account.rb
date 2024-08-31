# frozen_string_literal: true

class Account
  attr_accessor :balance, :pin

  def initialize(balance = 0.0, pin)
    @balance = balance
    @pin = pin
  end

  def withdraw(amount)
    if amount > @balance
      puts 'insuficient fund'
    else
      @balance -= amount
    end
    puts "remaining balance is #{@balance}"
  end

  def deposit(amount)
    return unless amount.positive?

    @balance += amount
    puts "balance is #{@balance}"
  end

  def check_balance
    puts "Your current balance is #{@balance}"
  end
end

class ATM
  def initialize(account)
    @account = account
  end

  def start
    "Welcome to the Jay's ATM"

    verify_pin
  end

  private

  def verify_pin
    print 'Please enter your PIN: '
    input_pin = gets.chomp.to_i
    puts @account.pin
    if input_pin == @account.pin
      show_menu
    else
      puts 'You have entered wrong PIN'
    end
  end

  def show_menu
    loop do
      puts "\n--- ATM Menu ---"
      puts '1. Check Balance'
      puts '2. Deposit Money'
      puts '3. Withdraw Money'
      puts '4. Exit'
      print 'Please choose an option: '

      choice = gets.chomp.to_i

      case choice

      when 1
        @account.check_balance
      when 2
        deposit_money
      when 3
        withdraw_money
      when 4
        puts 'Thanks for coming! Hope you have good day'
        break
      else
        puts 'Please enter valid choice'
      end
    end
  end

  def deposit_money
    print 'Enter the amount you want to deposit: '
    amount = gets.chomp.to_f

    puts 'Are you sure? Yes or No'
    surity = gets.chomp.downcase
    if surity == 'yes'
      @account.deposit(amount)
    else
      puts 'Deposit canceled.'
    end
  end

  def withdraw_money
    print 'Enter the amount you want to withdraw: '

    amount = gets.chomp.to_f
    @account.withdraw(amount)
  end
end

account = Account.new(1000, 1234)
atm = ATM.new(account)
atm.start
