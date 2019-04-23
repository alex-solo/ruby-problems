require 'pry'

class MinilangRuntimeError < RuntimeError; end

class Minilang
  TOKENS = %w[PUSH ADD SUB MULT DIV MOD POP PRINT]
  attr_accessor :stack, :register
  def initialize(program)
    @program = program
    @register = 0
    @stack = []
  end

  def eval(param)
    @program = format(@program, param)
    @program.split.each do |token| 
      eval_token(token)
    end
    
    rescue MinilangRuntimeError => error
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

CENTIGRADE_TO_FAHRENHEIT =
  '5 PUSH %<degrees_c>d PUSH 9 MULT DIV PUSH 32 ADD PRINT'
  
RECTANGLE_AREA = '%<length>d PUSH %<width>d MULT PRINT'

# Minilang.new(format(CENTIGRADE_TO_FAHRENHEIT, degrees_c: 100)).eval
# # 212
# Minilang.new(format(CENTIGRADE_TO_FAHRENHEIT, degrees_c: 0)).eval
# # 32
# Minilang.new(format(CENTIGRADE_TO_FAHRENHEIT, degrees_c: -40)).eval
# # -40

# minilang2 = Minilang.new(RECTANGLE_AREA)
# minilang2.eval({length: 8, width: 12})

minilang = Minilang.new(CENTIGRADE_TO_FAHRENHEIT)
# minilang.eval(degrees_c: 100)
# # 212
minilang.eval(degrees_c: 0)
# 32
# minilang.eval(degrees_c: -40)
# # -40