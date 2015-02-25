class Organization < ActiveRecord::Base

  validates :name, presence: true
  validates :name, uniqueness: true

  def self.by_letter(letter)
   where("name LIKE ?", "#{letter}%").order(:name)
 end

end
