require 'rails_helper'

describe Person do
  before do
    @person = Person.new(first_name:'James', last_name:'Taylor', date_of_birth:'2003-4-27')
  end

  subject { @person}

  it {should be_valid}
  it {should respond_to (:first_name)}
  it {should respond_to (:last_name)}
  it {should respond_to (:date_of_birth)}

  describe 'when a first_name is not present' do
    before {@person.first_name = ""}
    it {should_not be_valid}
  end

  describe 'when a last_name is not present' do
    before {@person.last_name = ""}
    it {should_not be_valid}
  end
end

describe "person" do
  it "is not vaild without a date of birth" do
    person = Person.new(first_name: "dasdf", last_name:"crazy", date_of_birth: "")

    expect(person.valid?).to eq false
  end
end
