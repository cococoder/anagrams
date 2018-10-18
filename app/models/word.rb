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

class Word < ApplicationRecord

end
