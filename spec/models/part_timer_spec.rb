require 'spec_helper'

describe PartTimer do

  it "has a valid factory" do
    expect(FactoryGirl.create(:part_timer)).to be_valid
  end

  it "is invalid without a job_title" do
    expect(FactoryGirl.build(:part_timer, job_title: nil)).to_not be_valid
  end

  it "is invalid without a level" do
    expect(FactoryGirl.build(:part_timer, level: nil)).to_not be_valid
  end
end
