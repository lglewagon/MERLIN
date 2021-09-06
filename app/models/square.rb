class Square < ApplicationRecord
  belongs_to :garden, autosave: true
  belongs_to :plant, required: false

  WIDTH = 50
  HEIGHT = 50

  def next
    Square.where(garden: garden).where("id > ?", id).first || Square.where(garden: garden).first
  end
  
  def previous
    Square.where(garden: garden).where("id < ?", id).last || Square.where(garden: garden).last
  end

end
