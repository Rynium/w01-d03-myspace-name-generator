#removes all lowercase letters
def downcase(name)
  name.downcase
end

#removes all non-letter characters
def remove_non_letters(name)
  alpha_name = name.gsub(/[^a-zA-Z]/, "")
end

#capitalizes ever other letters
def cap_every_other(name)
  arr = name.split("")
  empty = []
  counter = 0
  arr.map do |x|
    counter % 2 == 0 ? empty.push(x.upcase) : empty.push(x)
    counter += 1
  end
  empty.join('')
end

#prepends and appends names
def prepend_append(name)
  'xX_'.concat(name).concat('_Xx')
end

#calls methods to change original name to final name.
def name_generator(name)
  name = downcase(name)
  name = remove_non_letters(name)
  name = cap_every_other(name)
  name = prepend_append(name)
end
