require 'spec_helper'

describe "Posts" do

  subject { page }

  before(:each) do
    visit posts_path
  end

  it { should have_title('blog') }

  describe "commenting" do
    
    describe "while not signed in" do
      it { should_not have_button("Create Comment") }
      it { should have_link("sign in") }
      it { should have_content("Please sign in to leave a comment") }
    end

    describe "while signed in" do
      describe "create comment" do
        it { should have_button("Create Comment") }
        it { should have_selector("div#comment-form") }

        before do
          fill_in 'comment_body', :with => 'This is my comment'
        end

        it "should create a comment" do
          expect { click_button submit }.to change(Comment, :count).by(1)
        end
      end
    end
  end
end
