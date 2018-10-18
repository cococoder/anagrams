# == Schema Information
#
# Table name: words
#
#  id         :bigint(8)        not null, primary key
#  characters :string
#  length     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_words_on_length  (length)
#

require 'test_helper'

class WordTest < ActiveSupport::TestCase
  test "a word is anagram of" do
    word = Word.new
    word.characters = "crepitus"
    assert word.is_anagram_of? "pictures"
  end
  test "a word is not a anagram of" do
    word = Word.new
    word.characters = "crepitus"
    refute word.is_anagram_of? "pictddures"
  end
end
