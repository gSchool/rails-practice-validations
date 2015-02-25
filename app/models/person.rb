class Person < ActiveRecord::Base

  validates :first_name, presence: {message: "can't be blank, didn't your mother give you a name?" }
  validates :last_name, presence: {message: "can't be blank, your ancestors would be pissed!"}
  validates :date_of_birth, presence: {message: "can't be blank, I'd bet your life you have a birthday!"}

end
