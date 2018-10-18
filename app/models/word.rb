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

class Word < ApplicationRecord
  def is_anagram_of? word
    return false unless word.length == self.characters.length
    self.characters.chars.sort(&:casecmp).join == word.chars.sort(&:casecmp).join
  end
end
