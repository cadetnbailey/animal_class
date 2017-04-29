require "minitest/autorun"
require_relative "panda.rb"
	
class Testpandafunctions < Minitest::Test
	def test_class_returns_name
		animal=Panda.new("poe")
		assert_equal("poe",animal.name)
	end
	def test_class_returns_sound
		animal=Panda.new("poe")
		assert_equal("roar",animal.sound)
	end
	def test_class_returns_action
		animal=Panda.new("poe")
		assert_equal("sleep",animal.action)
		assert_equal("poe",animal.name)
		assert_equal("roar",animal.sound)

	end
	def test_class_returns_char
		animal=Panda.new("bob")
		assert_equal(3,animal.name_count)
	end
	def test_class_returns_chars
		animal=Panda.new("bobs")
		assert_equal(4,animal.name_count)
	end
	def test_class_returns_charl
		animal=Panda.new("hello")
		assert_equal(5,animal.name_count)
	end
	def test_class_returns_if_letter_included_animal_name
		animal=Panda.new("hello")
		letter = "o"
		assert_equal(true,animal.correct_letter?(letter))
	end
	def test_class_returns_if_letter_included_animal_name2
		animal=Panda.new("hello")
		letter = "h"
		assert_equal(true,animal.correct_letter?(letter))
	end
	def test_class_returns_if_letter_included_animal_name1
		animal=Panda.new("hello")
		letter = "3"
		assert_equal(false,animal.correct_letter?(letter))
	end
	def test_class_returns_six_asterics
		animal=Panda.new("letter")
		assert_equal(["*","*","*","*","*","*"],animal.asterics)
	end
	def test_class_returns_seven_asterics
		animal=Panda.new("michael")
		assert_equal(["*","*","*","*","*","*","*"],animal.asterics)
	end
	def test_class_returns_user_guess_pushed_into_guess_array
		animal=Panda.new("nick")
		animal.guessed = ["i","k","n"]
		letter="c"
		assert_equal(["i","k","n","c"],animal.update_guessed(letter))
	end
	def test_class_returns_letter_already_guessed_returns_false
		animal=Panda.new("nick")
		animal.guessed = ["d","k","z"]
		letter="t"
		assert_equal(false,animal.already_guessed(letter))
	end


end