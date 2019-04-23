hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

results = []

hsh.each do |_, details|
  if details[:type] == "fruit"
    results << details[:colors].map(&:capitalize)
  elsif details[:type] == "vegetable"
    results << details[:size].upcase
  end
end

p results