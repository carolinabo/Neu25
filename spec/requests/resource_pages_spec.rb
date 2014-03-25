require 'spec_helper'

describe "Resources pages" do
   subject { page }

  let(:user) { FactoryGirl.create(:user) }
  before { sign_in user }


   describe "resource creation" do
     before { visit new_resource_path }

     describe "with valid information" do

       #before { FactoryGirl.create(:resource) }


       before do
            fill_in "resource_name", with: "Res1"
            fill_in "resource_capacity", with: 5
       end

     it "should create a resource" do
       expect { click_button "Save resource" }.to change(Resource, :count).by(1)
       #before { visit new_resource_path}
     end
   end


  #  describe "resources destruction" do
  #  before { FactoryGirl.create(:resource, capacity: 6) }

  #  describe "as correct user" do
  #  before { visit resources_path }

  #   it "should delete a resource" do
  #      expect { click_link "delete" }.to change(Resource, :count).by(-1)
  #    end
  #  end
  # end
   end
  end


