def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i.to_s == num
end

loop do # main loop
  prompt("Welcome to the loan calculator!")
  prompt("-------------------------------")

  prompt("What is the loan amount?")

  loan_amount = ''
  loop do
    loan_amount = Kernel.gets().chomp()

    if valid_number?(loan_amount)
      break
    else
      prompt("Hmm...that doesn't look like a valid number")
    end

    if loan_amount.empty?() || loan_amount.to_f() < 0
      prompt("Must enter positive number.")
    else
      break
    end
  end

  prompt("What is the APR or interest rate of your loan?")
  prompt("Example: 5 for 5% or 2.5 for 2.5%")

  interest_rate = ''
  loop do
    interest_rate = Kernel.gets().chomp()

    if valid_number?(interest_rate)
      break
    else
      prompt("Hmm...that doesn't look like a valid number")
    end

    if interest_rate.empty?() || interest_rate.to_f() < 0
      prompt("Must enter positive number.")
    else
      break
    end
  end

  prompt("What is your loan duration (in years)?")

  loan_duration = ''
  loop do
    loan_duration = Kernel.gets().chomp()

    if loan_duration.empty?() || loan_duration.to_i() < 0
      prompt("Must enter valid number.")
    else
      break
    end
  end

  annual_interest_rate = interest_rate.to_f() / 100
  monthly_interest_rate = annual_interest_rate / 12
  loan_months = loan_duration.to_i() * 12

  monthly_payment = loan_amount.to_f() *
                    (monthly_interest_rate /
                    (1 - (1 + monthly_interest_rate)**(-loan_months)))

  prompt("Your monthly payment is: $#{format('%.2f', monthly_payment)}")

  prompt("Another calculation?")
  answer = Kernel.gets().chomp()

  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for using the Mortgage Calculator!")
prompt("Good bye!")
