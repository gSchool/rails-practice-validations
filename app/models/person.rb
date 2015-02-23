class Person < ActiveRecord::Base


  validates :first_name, :last_name, presence:{message: "must be filled in"}, length: {minimum: 2}
  # validates :first_name, presence: {message: "must be present"}, length: {minimum:2}
  # validates :first_name, :last_name, length: { minimum:2 }
  validates :date_of_birth, presence: {message: "must be filled in"}
  #

  # validates :name, presence: true
    # validates :name, presence: true, length: {minimum: 2}
    # validates :name, presence: { message: "can't be blank so you better give that horse a name" }
    # validates :name, uniqueness: true
    # validate :horse_is_named_bojack_horseman

    # private
    #
    # def horse_is_named_bojack_horseman
    #   unless self.name == "Bojack Horseman"
    #     self.errors[:base] << "Better name that horse Bojack Horseman"
    #   end
    # end

end
