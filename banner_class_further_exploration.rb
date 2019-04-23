class Banner
  attr_reader :width
  
  def initialize(message, width=message.length)
    @message = message
    @width = verify(width)
  end
  
  def verify(width)
      return @message.length if width < @message.length
      width
  end

  def to_s
    [horizontal_rule, empty_line, text, empty_line, horizontal_rule].join("\n")
  end

  private

  def horizontal_rule
    "+-" + ("-" * width) + "-+"
  end

  def empty_line
    "| " + (" " * width) + " |"
  end

  def text
    "| #{@message.center(width)} |"
  end
end

# if message.length > width
# wrap text
# lines = string.scan(/.{1,76}/)

banner = Banner.new('To boldly go where no one has gone before.')
puts banner
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

banner = Banner.new('', 80)
puts banner
# +--+
# |  |
# |  |
# |  |
# +--+
