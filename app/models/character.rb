# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  value      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Character < ApplicationRecord
  validates_uniqueness_of :value
end
