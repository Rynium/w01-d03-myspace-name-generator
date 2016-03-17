require_relative '../lib/name_generator.rb'



# Define whatever methods you need first
def assert_equal(actual, expected ,message)
  puts actual == expected ?  ";)" :  message
end

def refute_equal(actual, expected ,message)
  puts !(actual == expected) ? ";)" : message
end
# Now run your actual tests, making sure to do output as necessary

#TEST 1
expected = 'ryanstantz'
actual = downcase("RYANSTANTZ")
assert_equal(expected, actual, 'These two values should be equal')

#TEST 2
expected = 'ryanstantz'
actual = remove_non_letters("r y   ansta \nntz")
assert_equal(expected, actual, 'These two values should be equal')

#TEST 3
expected = 'ryanstantz'
actual = remove_non_letters("r[y]a1n&s_t@a#ntz")
assert_equal(expected, actual, 'These two values should be equal')

#TEST 4
expected = 'RyAnStAnTz'
actual = cap_every_other('ryanstantz')
assert_equal(expected, actual, 'These two values should be equal')

#TEST 5
expected = 'xX_RyAnStAnTz_Xx'
actual = prepend_append('RyAnStAnTz')
assert_equal(expected, actual, 'These two values should be equal')

#TEST 6
expected = 'xX_RyAnStAnTz_Xx'
actual = name_generator('ryanstantz')
assert_equal(expected, actual, 'These two values should be equal')

#TEST 7
expected = 'xX_AsHlEyBrOeScH_Xx'
actual = name_generator('a1,3,4,&*^*shley    bRoesch')
assert_equal(expected, actual, 'These two values should be equal')

#TEST 8
expected = 'xX_AnThOnYwEiNeR_Xx'
actual = name_generator('anth234523,..,]][[))989ony]wein/////////er]')
assert_equal(expected, actual, 'These two values should be equal')
