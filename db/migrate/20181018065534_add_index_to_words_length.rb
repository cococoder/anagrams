class AddIndexToWordsLength < ActiveRecord::Migration[5.2]
  def change
    add_index :words, :length
  end
end
