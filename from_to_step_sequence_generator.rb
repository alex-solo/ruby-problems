def step(starting, ending, step_by)
  value = starting
  until value > ending
    yield(value)
    value += step_by
  end
end

step(1, 10, 3) { |value| puts "value = #{value}" }

# value = 1
# value = 4
# value = 7
# value = 10
