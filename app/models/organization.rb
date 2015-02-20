class Organization < ActiveRecord::Base
  validates :first_name, presence: true, length: {minimum: 3}


end
