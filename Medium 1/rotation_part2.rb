def rotate_rightmost_digits(number, count)
  left, right = number.divmod(1* (10**count))
  (left.to_s + rotate(right.to_s)).to_i
end
