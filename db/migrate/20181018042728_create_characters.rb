class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :value,:unique => true
      t.timestamps
    end
  end
end
