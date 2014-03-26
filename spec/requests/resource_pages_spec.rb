require 'spec_helper'

describe "Resources pages" do
  subject { page }

  let(:user) { FactoryGirl.create(:user) }
  before do
    sign_in user
  end

  describe "resource creation" do
    before { visit new_resource_path }

    describe "with valid information" do

      before do
        fill_in "resource_name", with: "Res1"
        fill_in "resource_capacity", with: 5
      end

      it "should create a resource" do
        expect { click_button "Save resource" }.to change(Resource, :count).by(1)

      end
    end
  end

  describe "Index" do
    before do
      visit resources_path
    end

    it { should have_selector('h1',    text: 'Resources') }
    it { should have_link('Create a new Resource', href: new_resource_path) }
    it { should have_link('Continue with Jobs', href: jobs_path)}
    it { should have_link('Go to Main Menu', href: user_path(user))}
  end
end




