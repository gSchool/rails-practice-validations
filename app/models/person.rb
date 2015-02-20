class Person < ActiveRecord::Base

  validates :first_name, presence: {message: "You should reconsider your name"}

  validates :last_name, presence: {message: "Really! Call your mom, she may know this."}

validates :age, presence: true



end
