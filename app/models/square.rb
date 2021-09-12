class Square < ApplicationRecord
  belongs_to :garden, autosave: true
  belongs_to :plant, required: false

  WIDTH = 50
  HEIGHT = 50

  def next
    Square.where(garden: garden).where("id > ?", id).where.not(plant_id: nil).first || Square.where(garden: garden).where.not(plant_id: nil).first
  end
  
  def previous
    Square.where(garden: garden).where("id < ?", id).where.not(plant_id: nil).last || Square.where(garden: garden).where.not(plant_id: nil).last
  end

end
