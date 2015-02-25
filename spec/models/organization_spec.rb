require 'rails_helper'

describe Organization do

  before :each do
    @organ1 = Organization.create(name:"")
    @organ2 = Organization.create(name:"Footsteps")
    @organ3 = Organization.create(name:"Footsteps")
  end

  it 'validates the presence of the name' do
    expect(@organ1.errors[:name].present?).to eq(false)
    expect(@organ2.errors[:name].present?).to eql(true)
  end

  it 'validates the uniqueness of the name' do
    expect(@organ3).errors[:name].present?).to eql(false)
  end

end
