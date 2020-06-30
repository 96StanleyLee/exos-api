class CreateHeros < ActiveRecord::Migration[6.0]
  def change
    create_table :heros do |t|
      t.string :name
      t.string :icon
      t.string :image
      t.string :element
      t.string :regen
      t.string :hero_type
      t.string :rarity
      t.string :jp_only

    end
  end
end
