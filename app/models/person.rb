class Person < ActiveRecord::Base
  validates :first_name, presence: true, uniqueness: true
  validates :last_name, presence: { message: "must exist! MUST!" }, uniqueness: true
  validates :date_of_birth, presence: true
end
