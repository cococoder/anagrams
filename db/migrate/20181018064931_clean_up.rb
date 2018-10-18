class CleanUp < ActiveRecord::Migration[5.2]
  def change
    drop_table :characters
    drop_table :word_characters
  end
end
