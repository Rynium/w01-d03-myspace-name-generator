# You'll have to create your own method(s) here and define them. Use patterns like
# you've seen elsewhere.

require 'pry'

#removes whitespace from a name and any punctuation, or capitol letters.
#takes in a name with whitespace, returns name with no spaces and all lowercase.
#

def downcase(name)
  name.downcase
end

def remove_non_letters(name)
  alpha_name = name.gsub(/[^a-zA-Z]/, "")
end

def cap_every_other(name)
  arr = name.split('')
  empty = []
  counter = 0
  arr.map do |x|
    counter % 2 == 0 ? empty.push(x.upcase) : empty.push(x)
    counter += 1
  end
  empty.join('')
end

def prepend_append(name)
  'xX_'.concat(name).concat('_Xx')
end

def name_generator(name)
  name = downcase(name)
  name = remove_non_letters(name)
  name = cap_every_other(name)
  name = prepend_append(name)
end
