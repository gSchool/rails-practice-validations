class Person < ActiveRecord::Base

  validate :person_has_first_name
  validates :last_name, presence: {message: "can't be blank, your ancestors would be pissed!"}
  validates :date_of_birth, presence: {message: "can't be blank, I'd bet your life you have a birthday!"}

  def person_has_first_name
    unless self.first_name
      self.errors[:base] << "Better not be fucking with me, fool!"
    end
  end

end
