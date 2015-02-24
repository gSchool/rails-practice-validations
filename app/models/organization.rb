class Organization < ActiveRecord::Base

  validate :organization_starts_with_the

  def organization_starts_with_the
    unless self.name.include? "The"
      self.errors[:base] << "Your organization name must start with 'The'"
    end
  end

end
