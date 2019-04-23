class MinilandRuntimeError < RuntimeError; end
class BadTokenError < MinilandRuntimeError; end
class EmptyStackError < MinilandRuntimeError; end

class Minilang
  TOKENS = %w[PUSH ADD SUB MULT DIV MOD POP PRINT]

  attr_accessor :stack, :register
  def initialize(string)
    @tokens = string.split
    @register = 0
    @stack = []
  end

  def eval
    @tokens.each { |token| eval_token(token) }

    rescue MinilandRuntimeError => error
      puts error.message
  end

  def eval_token(token)
    if token.to_i.to_s == token
      @register = token.to_i
    elsif !TOKENS.include?(token)
      raise BadTokenError, "Invalid token #{token}."
    else
      send(token.downcase)
    end
  end
  
  def print
    p @register
  end
  
  def sub
    @register -= pop
  end
  
  def mod
    @register %= pop
  end
  
  def push
    @stack.push(@register)
  end
  
  def mult
    @register *= pop
  end
  
  def add
    @register += pop
  end
  
  def div
    @register /= pop
  end
  
  def pop
    raise EmptyStackError, "Empty Stack!" if @stack.empty?
    @register = @stack.pop
  end
  
end

Minilang.new('PRINT').eval
# 0

Minilang.new('5 PUSH 3 MULT PRINT').eval
# 15

Minilang.new('5 PRINT PUSH 3 PRINT ADD PRINT').eval
# 5
# 3
# 8

Minilang.new('5 PUSH 10 PRINT POP PRINT').eval
# 10
# 5

Minilang.new('5 PUSH POP POP PRINT').eval
# Empty stack!

Minilang.new('3 PUSH PUSH 7 DIV MULT PRINT ').eval
# 6

Minilang.new('4 PUSH PUSH 7 MOD MULT PRINT ').eval
# 12

Minilang.new('-3 PUSH 5 XSUB PRINT').eval
# Invalid token: XSUB

Minilang.new('-3 PUSH 5 SUB PRINT').eval
# 8

Minilang.new('6 PUSH').eval
# (nothing printed; no PRINT commands)