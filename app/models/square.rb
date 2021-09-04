class Square < ApplicationRecord
  belongs_to :garden
  belongs_to :plant

  WIDTH = 50
  HEIGHT = 50

  def next
    Square.where(garden: garden).where("id > ?", id).first || Square.where(garden: garden).first
  end
  
  def previous
    Square.where(garden: garden).where("id < ?", id).last || Square.where(garden: garden).last
  end

end
