require_relative "../lib/name_generator.rb"
require_relative "test_helper.rb"

class TriangleTest < Minitest::Test

  def test_downcase_method
    expected = 'ryanstantz'
    actual = downcase("RYANSTANTZ")
    assert_equal(expected, actual, 'These two values should be equal')
  end

  def test_punction_removal
    expected = 'ryanstantz'
    actual = remove_non_letters("r y   ansta \nntz")
    assert_equal(expected, actual, 'These two values should be equal')
  end

  def test_punction_removal_2
    expected = 'ryanstantz'
    actual = remove_non_letters("r[y]a1n&s_t@a#ntz")
    assert_equal(expected, actual, 'These two values should be equal')
  end

  def test_alternating_cap
  expected = 'RyAnStAnTz'
  actual = cap_every_other('ryanstantz')
  assert_equal(expected, actual, 'These two values should be equal')
  end

  def test_prepend_append
  expected = 'xX_RyAnStAnTz_Xx'
  actual = prepend_append('RyAnStAnTz')
  assert_equal(expected, actual, 'These two values should be equal')
  end

  def test_full_generator_1
  expected = 'xX_RyAnStAnTz_Xx'
  actual = name_generator('ryanstantz')
  assert_equal(expected, actual, 'These two values should be equal')
  end

  def test_full_generator_2
  expected = 'xX_AsHlEyBrOeScH_Xx'
  actual = name_generator('a1,3,4,&*^*shley    bRoesch')
  assert_equal(expected, actual, 'These two values should be equal')
  end

  def test_full_generator_3
  expected = 'xX_AnThOnYwEiNeR_Xx'
  actual = name_generator('anth234523,..,]][[))989ony]wein/////////er]')
  assert_equal(expected, actual, 'These two values should be equal')
  end
  
end
