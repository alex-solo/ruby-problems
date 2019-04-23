# ask user for 2 numbers
# ask for operation to perform
# perform the operation
# output the result

LANGUAGE = 'en'


require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(key)
  message = messages(key, LANGUAGE)
  Kernel.puts("=> #{message}")
end

def integer?(num)
  num.to_s == num.to_i.to_s
end

def float?(input)
   /\d/.match(input) && /^\d*\.?\d*$/.match(input)
end

def valid_number?(num)
  integer?(num) || float?(num)
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt('welcome')

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

prompt("Hi #{name}!")

loop do # main loop
  number1 = ''
  loop do
    prompt(MESSAGES['num1'])
    number1 = Kernel.gets.chomp

    if valid_number?(number1)
      break
    else
      prompt(MESSAGES['invalid'])
    end
  end

  number2 = ''
  loop do
    prompt(MESSAGES['num2'])
    number2 = Kernel.gets.chomp

    if valid_number?(number2)
      break
    else
      prompt(MESSAGES['invalid'])
    end
  end

  operation_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  prompt(operation_prompt)

  operator = ''
  loop do
    operator = Kernel.gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(MESSAGES['bad_choice'])
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result =  case operator
            when '1'
              number1.to_i + number2.to_i
            when '2'
              number1.to_i - number2.to_i
            when '3'
              number1.to_i * number2.to_i
            when '4'
              number1.to_f / number2.to_f
            end

  prompt("This is the result: #{result}")

  prompt(MESSAGES['repeat?'])
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt(MESSAGES['exit'])
