class Person < ActiveRecord::Base
  validates :first_name, presence: true, format: { with: /\A[a-zA-Z]+\z/,
    message: "can only contain letters" }
  validates :last_name, presence: true
  validate :not_future_date
  def not_future_date
    if self.date_of_birth.present? && self.date_of_birth > Date.today
      self.errors[:base] << "can't be in the past"
    end
  end

end
