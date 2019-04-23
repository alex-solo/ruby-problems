=begin
- input: three numbers between 0-100 representing grades
- output: string in form of one capital letter. A B C D or F
- rules: 
  - A if avg 90-100
  - B if avg 80-90
  - C if avg 70-80
  - D if avg 60-70
  - F if avg 0-60
=end

def get_grade(num1, num2, num3)
  avg = ((num1 + num2 + num3) / 3).to_f
  case avg
  when 90..100 then "A"
  when 80...90 then "B"
  when 70...80 then "C"
  when 60...70 then "D"
  when 0..60 then "F"
  else "A++"
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
p get_grade(98, 101, 107)
