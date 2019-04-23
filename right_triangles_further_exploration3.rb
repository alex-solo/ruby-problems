def triangle(num, corner = :top_left)
  left_triangle = num.downto(1).map.with_index { |n, i| ('*' * n) + (' ' * i) }
  right_triangle = num.downto(1).map.with_index { |n, i| (' ' * i) + ('*' * n) }
  
  puts case corner
       when :top_left then left_triangle
       when :bottom_left then left_triangle.reverse
       when :top_right then right_triangle
       when :bottom_right then right_triangle.reverse
       end
end

triangle(9, :bottom_right)
triangle(9, :top_left)
triangle(9, :top_right)
triangle(9, :bottom_left)
triangle(20)
