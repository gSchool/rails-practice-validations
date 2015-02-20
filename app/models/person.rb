class Person < ActiveRecord::Base
  validates :first_name, presence: true, length: { minimum: 2}
  validates :last_name, presence: true, length: { minimum: 2}
  validates :date_of_birth, presence: true
  validate :date_of_birth_cannot_be_in_the_future
  
  private

  def date_of_birth_cannot_be_in_the_future
    if date_of_birth.present? && date_of_birth > Date.today
      errors.add(:date_of_birth, 'can\'t be in the future')
    end
  end

end
