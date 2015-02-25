require 'rails_helper'

describe Organization do
  it "is invalid without a name" do
    organization = Organization.new(name: nil)
   organization.valid?
   expect(organization.errors[:name]).to include("can't be blank")
 end

 it "is invalid with a duplicate name" do
    Organization.create(name: 'Joes')
    organization = Organization.new(name: 'Joes')
   organization.valid?
   expect(organization.errors[:name]).to include("has already been taken")
 end

 it "returns a sorted array of results that match" do
      hellio = Organization.create(name: 'Hellio')
      jellio = Organization.create(name: 'Jellio')
      hellickio = Organization.create(name: 'Hellickio')

     expect(Organization.by_letter("H")).to eq [hellickio, hellio]
   end

   it "omits results that do not match" do
     hellio = Organization.create(name: 'Hellio')
     jellio = Organization.create(name: 'Jellio')
     hellickio = Organization.create(name: 'Hellickio')
     expect(Organization.by_letter("J")).to include jellio
   end


end
