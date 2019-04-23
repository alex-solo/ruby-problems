=begin

- input: string of commands(numbers, and words)
- output: numbers
  - depending on command, print values of operations or value of register
  
Algorithm:
  - main method (interpreter)
    - take string and split into elements. 
      ex. commands = '5 PUSH 3 MULT PRINT'.split
    - iterate through array - each element in an array will be an argument for another method "commands"
    - commands method 
      - if cmd.to_i.to_s == cmd then send cmd to place_in_regist(str)
      - if cmd == 'PUSH' then send cmd to push(str)
      - if cmd == 'MULT' then send cmd to mult(str)
      - ... etc.
      
Further Exploration: (3 + (4 * 5) - 7) / (5 % 3)
=end

VALID_TOKENS = %w(PUSH ADD SUB MULT DIV MOD POP PRINT) + ('0'..'9').to_a

def minilang(string)
  stack = []
  register = [0]
  tokens = string.split
  tokens.each { |token| all_commands(token, stack, register) }
  return nil
end

def all_commands(token, stack, register)
  if valid_token?(token) 
    case
    when token.to_i.to_s == token then register[0] = token.to_i
    when token == "PRINT" then puts register[0]
    when token == "PUSH" then stack.push(register[0])
    when stack.empty? then (return "Error. Empty Stack")
    when token == "ADD"  then register[0] += stack.pop
    when token == "SUB"  then register[0] -= stack.pop
    when token == "MULT" then register[0] *= stack.pop
    when token == "DIV"  then register[0] /= stack.pop
    when token == "MOD"  then register[0] %= stack.pop
    when token == "POP"  then register[0] = stack.pop
    end
  else
    puts "ERROR: Invalid token"
    exit
  end
end

def valid_token?(token)
  VALID_TOKENS.include?(token)
end

#minilang("3 PUSH 5 MOD PUSH 7 PUSH 5 PUSH 4 MULT PUSH 3 ADD SUB DIV PRINT")
minilang('ADD')
#minilang('4 PUSH PLUS MUD')
