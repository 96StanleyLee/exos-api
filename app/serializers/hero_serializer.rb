class HeroSerializer < ActiveModel::Serializer
  attributes :name, :element, :hero_type, :rarity, :stat

  def stat
    self.object.stat.as_json(only: [:hp, :atk, :def, :speed])
  end
end
