require 'rails_helper'

describe Organization do

  before do
    @organization = Organization.new(name: "Costco")
  end

  subject { @organization }

  it { should respond_to(:name) }
  it { should be_valid }

  describe "when name is not present" do
    before { @organization.name = " " }
    it { should_not be_valid }
  end
end
