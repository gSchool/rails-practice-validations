class Person < ActiveRecord::Base
  validates :first_name, presence: true, length: {minimum: 3}
  validates :last_name, presence: true

end
