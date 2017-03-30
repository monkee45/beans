class House < ApplicationRecord

  def small?
   capacity <= 50
  end

  def medium?
   capacity > 50 and capacity <= 100
  end

  def large?
   capacity > 100
  end

  def self.open
    where ("status == 'Open'")
  end

end
