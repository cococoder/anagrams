class AddCharactersToWords < ActiveRecord::Migration[5.2]
  def change
    add_column :words, :characters, :string
  end
end
