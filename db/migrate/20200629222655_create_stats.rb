class CreateStats < ActiveRecord::Migration[6.0]
  def change
    create_table :stats do |t|
      t.integer :hp
      t.integer :atk
      t.integer :def
      t.integer :speed
      t.belongs_to :hero, null: false, foreign_key: true

    end
  end
end
