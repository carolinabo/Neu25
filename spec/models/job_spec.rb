require 'spec_helper'

describe Job do

  before { @job = Job.new(name: "Spass haben", duration: "5") }

  subject { @job }

  it { should respond_to(:name) }
  it { should respond_to(:duration) }

  it { should be_valid }

  describe "when name is not present" do
    before { @job.name = " " }
    it { should_not be_valid }
  end

  describe "when name is too long" do
    before { @job.name = "a" * 51 }
    it { should_not be_valid }
  end

  describe "when name is already taken" do
    before do
      job_with_same_name = @job.dup
      job_with_same_name.save
    end
    it { should_not be_valid }
  end

  describe "when job duration is too short" do
    before { @job.duration = "a" * 5 }
    it { should be_invalid }
  end

  describe "when duration is not present" do
    before { @job.duration = " " }
    it { should_not be_valid }
  end



  end