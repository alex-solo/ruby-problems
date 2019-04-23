arr = [['stars', 'river'], 'letter', ['leaves', ['horses', 'table']]]

arr.each_with_object([]) do |element, new_array|
  if element.to_s == element
    new_array << element
  else
    element.each do |sub_el|
      if sub_el.to_s == sub_el
        new_array << sub_el
      else
        sub_el.each do |sub_sub_el|
          new_array << sub_sub_el
        end
      end
    end
  end
end      
