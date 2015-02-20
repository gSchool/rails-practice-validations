class Person < ActiveRecord::Base
  validates :first_name, presence: true, format: { with: /\A[a-zA-Z]+\z/,
    message: "cannot contain numbers" }
  validates :last_name, presence: true, format: { with: /\A[a-zA-Z]+\z/,
    message: "cannot contain numbers" }
  validates :date_of_birth, presence: true
  validate  :date_must_be_in_the_future

  def date_must_be_in_the_future
    if self.date_of_birth.present? && self.date_of_birth > Date.today
      self.errors[:base] << "Date can't be in the future"
    end
  end


end
