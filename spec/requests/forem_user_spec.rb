require 'spec_helper'

describe "Forum" do

  subject { page }

  describe "Home Page" do
    let(:user) { FactoryGirl.create(:user) }
    before { sign_in user }
     
    before { visit forem_path }
    it { should have_link("Pensions") }
    it { should have_link("Insurance") }
    it { should have_link("general")}

    describe "Individual Forum" do
      before { click_link "General" }
      
      it { should have_link("New topic") }
      
      describe "Create Topic" do
        before { click_link "New Topic" }
        
        it { should have_content('Creating a new topic') }
        it { should have_field('Title') }
        it { should have_field('Content')}
      end
    end
  end
end
