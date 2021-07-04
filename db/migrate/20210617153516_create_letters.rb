class CreateLetters < ActiveRecord::Migration[6.0]
  def change
    create_table :letters do |t|
      t.text :text
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
