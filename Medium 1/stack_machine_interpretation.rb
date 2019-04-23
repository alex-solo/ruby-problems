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
=end

def minilang(string)
  stack = []
  register = [0]
  tokens = string.split
  tokens.each { |token| all_commands(token, stack, register) }
end

def all_commands(token, stack, register)
  case token
  when "PUSH" then stack.push(register[0])
  when "ADD"  then register[0] += stack.pop
  when "SUB"  then register[0] -= stack.pop
  when "MULT" then register[0] *= stack.pop
  when "DIV"  then register[0] /= stack.pop
  when "MOD"  then register[0] %= stack.pop
  when "POP"  then register[0] = stack.pop
  when "PRINT" then p register[0]
  else register[0] = token.to_i
  end  
end

minilang("PRINT")
minilang('5 PUSH 3 MULT PRINT')
minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
minilang('5 PUSH POP PRINT')
minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12
minilang('-3 PUSH 5 SUB PRINT')
# 8
minilang('6 PUSH')
# (nothing printed; no PRINT commands)
