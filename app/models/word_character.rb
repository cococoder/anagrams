# == Schema Information
#
# Table name: word_characters
#
#  id           :integer          not null, primary key
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  character_id :integer
#  word_id      :integer
#
# Indexes
#
#  index_word_characters_on_character_id  (character_id)
#  index_word_characters_on_word_id       (word_id)
#

class WordCharacter < ApplicationRecord
  belongs_to :word
  belongs_to :character
end
